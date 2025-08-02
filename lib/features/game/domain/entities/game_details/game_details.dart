import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:symbal_fl/features/game/data/models/game_analytics/game_analytics.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';
import 'package:symbal_fl/features/game/data/models/user_game_preference/user_game_preference.dart';

part 'game_details.freezed.dart';

@freezed
abstract class GameDetails with _$GameDetails {
  const factory GameDetails({
    required GameModel gameModel,
    required GameAnalytics analytics,
    required GameDataModel gameData, // The actual AI-generated game
    UserGamePreference? userPreference,
    List<String>? relatedGameIds,
  }) = _GameDetails;
  
}