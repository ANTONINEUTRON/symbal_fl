import 'dart:io';

import 'package:symbal_fl/features/game/data/datasources/game_local_datasource.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';
import 'package:symbal_fl/features/game/domain/entities/game_details/game_details.dart';
import 'package:symbal_fl/features/game/domain/entities/message_model.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';
import 'package:symbal_fl/features/game/domain/repositories/game_repository.dart';
import 'package:symbal_fl/features/game/data/datasources/game_remote.dart';

class SupabaseGameRepository implements GameRepository {
  SupabaseGameRepository()
      : _remoteDataSource = GameRemoteDatasource(),
        _localDataSource = GameLocalDataSource();

  final GameRemoteDatasource _remoteDataSource;
  final GameLocalDataSource _localDataSource;


  @override
  Future<MessageModel> generateGame(MessageModel message) async {
    return await _remoteDataSource.generateGame(message);
  }

  @override
  Future<List<GameDataModel>> getDeployedGames({String? userId}) async {
    return await _remoteDataSource.getDeployedGames(userId: userId);
  }

  @override
  Future<List<String>> uploadFiles(List<File> files) async {
    return await _remoteDataSource.uploadFiles(files);
  }

  @override
  Future<GameDetails> getGameDetails(String gameId, {String? userId}) async {
    return await _remoteDataSource.getGameDetails(gameId, userId: userId);
  }

  @override
  Future<List<GameDetails>> getGamesList({String? userId, int page = 0, int limit = 20}) async {
    return await _remoteDataSource.getGamesList(userId: userId, page: page, limit: limit);
  }

  @override
  Future<GameModel> getGame(String gameId) async {
    return await _remoteDataSource.getGame(gameId);
  }

  @override
  Future<List<GameModel>> getGames({int page = 0, int limit = 5}) async {
    return await _remoteDataSource.getGames(page: page, limit: limit);
  }

  @override
  Future<void> incrementPlayCount(String gameId) async {
    return await _remoteDataSource.incrementPlayCount(gameId);
  }

  @override
  Future<void> toggleFavorite(String gameId, String userId) async {
    return await _remoteDataSource.toggleFavorite(gameId, userId);
  }

  @override
  Future<void> likeGame(String gameId, String userId) async {
    return await _remoteDataSource.likeGame(gameId, userId);
  }
  
   @override
  Future<void> saveGameModel(GameModel gameModel) async {
    return await _remoteDataSource.upsertGameModel(gameModel);
  }

  // Local operations
  @override
  Future<void> saveLocalGame(GameModel gameModel) async {
    try {
      return await _localDataSource.saveLocalGame(gameModel);
    } catch (e) {
      throw Exception('Failed to save local game: ${e.toString()}');
    }
  }

  @override
  Future<GameModel> getLocalGame(String gameId) async {
    try {
      final game = await _localDataSource.getLocalGame(gameId);
      if (game == null) {
        throw Exception('Local game not found with ID: $gameId');
      }
      return game;
    } catch (e) {
      throw Exception('Failed to get local game: ${e.toString()}');
    }
  }

  @override
  Future<void> deleteLocalGame(String gameId) async {
    try {
      return await _localDataSource.deleteLocalGame(gameId);
    } catch (e) {
      throw Exception('Failed to delete local game: ${e.toString()}');
    }
  }

  @override
  Future<List<GameModel>> getAllLocalGames() async {
    try {
      return await _localDataSource.getAllLocalGames();
    } catch (e) {
      throw Exception('Failed to get all local games: ${e.toString()}');
    }
  }

  @override
  Future<int> getLocalGamesCount() async {
    try {
      return await _localDataSource.getLocalGamesCount();
    } catch (e) {
      throw Exception('Failed to get local games count: ${e.toString()}');
    }
  }

  @override
  Future<bool> hasLocalGame(String gameId) async {
    try {
      return await _localDataSource.hasLocalGame(gameId);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> clearAllLocalGames() async {
    try {
      return await _localDataSource.clearAllLocalGames();
    } catch (e) {
      throw Exception('Failed to clear local games: ${e.toString()}');
    }
  }
  
  @override
  Future<GameModel> getGameWithFallback(String gameId) async {
    try {
      // Try local first
      final localGame = await _localDataSource.getLocalGame(gameId);
      if (localGame != null) {
        return localGame;
      }
    } catch (e) {
      // Local failed, continue to remote
    }

    // Fallback to remote
    return await _remoteDataSource.getGame(gameId);
  }
  
  @override
  Future<void> syncLocalGameToRemote(String gameId) async {
    final localGame = await getLocalGame(gameId);
    await saveGameModel(localGame);
    // Optionally delete local copy after successful sync
    await deleteLocalGame(gameId);
  }

}

