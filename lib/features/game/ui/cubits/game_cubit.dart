import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';
import 'package:symbal_fl/features/game/domain/entities/message_model.dart';
import 'package:symbal_fl/features/game/domain/repositories/game_repository.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_state.dart';

class GameCubit extends HydratedCubit<CreateGameState> {
  GameCubit({required this.gameGenerationRepository})
    : super(const CreateGameState());

  final GameRepository gameGenerationRepository;

  /// Get all games from chat history
  List<GameModel> getAllGeneratedGames() {
    return state.chatList
        .where((msg) => msg.gameModel != null)
        .map((msg) => msg.gameModel!)
        .toList();
  }

  /// Select specific game for deployment
  void selectGameForDeployment(String gameId) {
    final allGames = getAllGeneratedGames();
    final selectedGame = allGames.where((game) => game.id == gameId).firstOrNull;
    
    if (selectedGame != null) {
      emit(state.copyWith(
        generatedGame: selectedGame,
        selectedGameId: gameId,
      ));
    }
  }

  /// Get the latest game (for default selection)
  GameModel? getLatestGame() {
    final allGames = getAllGeneratedGames();
    return allGames.isNotEmpty ? allGames.last : null;
  }

  Future<void> createGame({
    required String prompt,
    required List<File> selectedFiles,
  }) async {
    try {
      // Upload files to storage
      var uploadedFilesUrl = await gameGenerationRepository.uploadFiles(
        selectedFiles,
      );
      print("Uploaded files URLs: $uploadedFilesUrl");

      // Create message to send to backend
      var message = MessageModel(
        prompt: prompt,
        isUser: true,
        timestamp: DateTime.now(),
        attachedFiles: uploadedFilesUrl,
      );

      // Add to chatList state
      emit(
        state.copyWith(
          chatList: [...state.chatList, message],
          isGenerating: true,
        ),
      );

      // Call backend to generate game
      MessageModel aiMessage = await gameGenerationRepository.generateGame(message);
      
      emit(
        state.copyWith(
          chatList: [...state.chatList, aiMessage],
          isGenerating: false,
          generatedGame: aiMessage.gameModel, 
          isDraftSaved: aiMessage.gameModel != null, 
        ),
      );

      if (aiMessage.gameModel != null) {
        print("Game generated and auto-saved: ${aiMessage.gameModel!.title}");
      } else {
        print("Warning: No game model in AI response");
      }

    } catch (e) {
      emit(
        state.copyWith(
          isGenerating: false,
          error: 'Failed to create game: ${e.toString()}',
        ),
      );
      
      if (kDebugMode) {
        print('Error creating game: $e');
      }
    }
  }

  /// Enhanced deployment with token URL and game modifications
  Future<void> deployGame({
    GameModel? gameToDeploy,
    String? tokenUrl,
    String? updatedTitle,
    String? updatedDescription,
    List<String>? updatedTags,
  }) async {
    final gameModel = gameToDeploy ?? state.generatedGame;
    
    if (gameModel == null) {
      emit(state.copyWith(error: 'No game to deploy'));
      return;
    }

    emit(state.copyWith(isDeploying: true, error: null));

    try {
      // Create enhanced game model with updates
      final enhancedGame = gameModel.copyWith(
        title: updatedTitle ?? gameModel.title,
        description: updatedDescription ?? gameModel.description,
        tags: updatedTags ?? gameModel.tags,
        // Add token URL if GameModel supports it, otherwise handle in metadata
      );

      // Save to remote database
      await gameGenerationRepository.saveGameModel(enhancedGame);
      
      emit(state.copyWith(
        isDeploying: false,
        isDeployed: true,
        selectedGameId: null, // Clear selection after deployment
      ),);
      
      print("Game deployed successfully: ${enhancedGame.title}");
      if (tokenUrl != null) {
        print("Token URL associated: $tokenUrl");
      }
      
    } catch (e) {
      emit(state.copyWith(
        isDeploying: false,
        error: 'Failed to deploy game: ${e.toString()}',
      ));
      
      if (kDebugMode) {
        print('Error deploying game: $e');
      }
    }
  }

  void addToDrafts(GameModel gameModel) {
    final updatedDrafts = [...state.draftGames];
    
    // Remove existing game with same ID if it exists
    updatedDrafts.removeWhere((game) => game.id == gameModel.id);
    
    // Add new game
    updatedDrafts.add(gameModel);
    
    emit(state.copyWith(
      draftGames: updatedDrafts,
      generatedGame: gameModel,
      isDraftSaved: true,
    ));
  }

  void loadDraft(String gameId) {
    final game = state.draftGames.firstWhere(
      (game) => game.id == gameId,
      orElse: () => throw Exception('Draft not found'),
    );
    
    emit(state.copyWith(
      generatedGame: game,
      isDraftSaved: true,
    ));
  }

  void deleteDraft(String gameId) {
    final updatedDrafts = state.draftGames
        .where((game) => game.id != gameId)
        .toList();
    
    // Clear current game if it's the one being deleted
    GameModel? currentGame = state.generatedGame;
    bool isDraftSaved = state.isDraftSaved;
    
    if (state.generatedGame?.id == gameId) {
      currentGame = null;
      isDraftSaved = false;
    }
    
    emit(state.copyWith(
      draftGames: updatedDrafts,
      generatedGame: currentGame,
      isDraftSaved: isDraftSaved,
    ));
  }

  void saveCurrentGameAsDraft() {
    if (state.generatedGame != null) {
      addToDrafts(state.generatedGame!);
    }
  }

  void clearAllDrafts() {
    emit(state.copyWith(
      draftGames: [],
      generatedGame: null,
      isDraftSaved: false,
    ));
  }

  void addRetries(int count) {
    emit(state.copyWith(retriesCount: state.retriesCount + count));
  }

  void resetGame() {
    emit(state.copyWith(
      chatList: [],
      isGenerating: false,
      isDeploying: false,
      isDraftSaved: false,
      isDeployed: false,
      generatedGame: null,
      error: null,
    ));
  }

  void clearError() {
    emit(state.copyWith(error: null));
  }

  /// Clear deployment success state
  void clearDeploymentSuccess() {
    emit(state.copyWith(isDeployed: false));
  }

  /// Check if a specific game is selected for deployment
  bool isGameSelected(String gameId) {
    return state.selectedGameId == gameId;
  }

  /// Get currently selected game for deployment
  GameModel? getSelectedGame() {
    if (state.selectedGameId == null) return state.generatedGame;
    
    final allGames = getAllGeneratedGames();
    return allGames.where((game) => game.id == state.selectedGameId).firstOrNull;
  }

  /// Clear game selection
  void clearGameSelection() {
    emit(state.copyWith(selectedGameId: null));
  }

  // ✅ REQUIRED: Implement fromJson for state restoration
  @override
  CreateGameState? fromJson(Map<String, dynamic> json) {
    try {
      return CreateGameState.fromJson(json);
    } catch (e) {
      print('Error restoring state: $e');
      return null; // Return null to use initial state
    }
  }

  // ✅ REQUIRED: Implement toJson for state persistence
  @override
  Map<String, dynamic>? toJson(CreateGameState state) {
    try {
      return state.toJson();
    } catch (e) {
      print('Error persisting state: $e');
      return null; // Return null to skip persistence
    }
  }
}
