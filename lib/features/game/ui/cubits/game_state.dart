import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:symbal_fl/features/game/domain/entities/message_model.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';

part 'game_state.freezed.dart';
part 'game_state.g.dart'; 

@freezed
abstract class GameState with _$GameState {
  const factory GameState({
    @Default([]) List<MessageModel> chatList,
    @Default(false) bool isGenerating,
    @Default(false) bool isDeploying,
    @Default(false) bool isDraftSaved,
    @Default(false) bool isDeployed,
    @Default(3) int retriesCount,
    GameModel? generatedGame,
    @Default([]) List<GameModel> draftGames,
    @Default([]) List<GameModel> deployedGames,
    @Default(false) bool isLoadingDeployedGames,
    String? error,
    String? selectedGameId, // Track which game user wants to deploy
  }) = _GameState;


  factory GameState.fromJson(Map<String, dynamic> json) =>
      _$GameStateFromJson(json);
}
