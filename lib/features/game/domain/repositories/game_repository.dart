
import 'dart:io';

import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';
import 'package:symbal_fl/features/game/domain/entities/game_details/game_details.dart';
import 'package:symbal_fl/features/game/domain/entities/message_model.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';

/// Repository interface for game generation
/// This repository is responsible for generating game data based on user input
abstract class GameRepository {
  Future<MessageModel> generateGame(MessageModel message);
  
  Future<List<GameDataModel>> getDeployedGames({String? userId});
  
  Future<void> saveGameModel(GameModel gameData);
  Future<List<String>> uploadFiles(List<File> files);

  // Game Management with GameDetails
  Future<GameDetails> getGameDetails(String gameId, {String? userId});
  Future<List<GameDetails>> getGamesList({String? userId, int page = 0, int limit = 20});
  
  // Individual Game Operations
  Future<GameModel> getGame(String gameId);
  Future<List<GameModel>> getGames({int page = 0, int limit = 20});
  
  // Analytics Operations
  Future<void> incrementPlayCount(String gameId);
  Future<void> toggleFavorite(String gameId, String userId);
  Future<void> likeGame(String gameId, String userId);

  // Local operations
  Future<GameModel> getLocalGame(String gameId);
  Future<void> saveLocalGame(GameModel gameModel);
  Future<void> deleteLocalGame(String gameId);
  Future<List<GameModel>> getAllLocalGames();
  Future<int> getLocalGamesCount();
  Future<bool> hasLocalGame(String gameId);
  Future<void> clearAllLocalGames();
  Future<GameModel> getGameWithFallback(String gameId);
  Future<void> syncLocalGameToRemote(String gameId);
  
  }