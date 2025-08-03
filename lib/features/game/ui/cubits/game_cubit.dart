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
      
      // ✅ Update state with AI message and generated game (automatically persisted!)
      emit(
        state.copyWith(
          chatList: [...state.chatList, aiMessage],
          isGenerating: false,
          generatedGame: aiMessage.gameModel, // ✅ Automatically saved by HydratedBloc
          isDraftSaved: aiMessage.gameModel != null, // ✅ Mark as saved if game exists
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

  // ✅ Deploy game to production
  Future<void> deployGame() async {
    if (state.generatedGame == null) {
      emit(state.copyWith(error: 'No game to deploy'));
      return;
    }

    emit(state.copyWith(isDeploying: true));

    try {
      // Save to remote database
      await gameGenerationRepository.saveGameModel(state.generatedGame!);
      
      // ✅ Clear from local state after successful deployment (auto-persisted)
      emit(state.copyWith(
        isDeploying: false,
        isDeployed: true,
        generatedGame: null, // ✅ Automatically removed from storage
        isDraftSaved: false,
      ));
      
      print("Game deployed successfully and removed from drafts");
    } catch (e) {
      emit(state.copyWith(
        isDeploying: false,
        error: 'Failed to deploy game: ${e.toString()}',
      ));
    }
  }

  // ✅ Add multiple games to drafts (for managing multiple generated games)
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

  // ✅ Load specific draft
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

  // ✅ Delete draft
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

  // ✅ Save current game as draft
  void saveCurrentGameAsDraft() {
    if (state.generatedGame != null) {
      addToDrafts(state.generatedGame!);
    }
  }

  // ✅ Clear all drafts
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
