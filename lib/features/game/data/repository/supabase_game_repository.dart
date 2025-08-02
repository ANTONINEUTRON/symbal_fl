import 'dart:io';

import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';
import 'package:symbal_fl/features/game/domain/entities/game_details/game_details.dart';
import 'package:symbal_fl/features/game/domain/entities/message_model.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';
import 'package:symbal_fl/features/game/domain/repositories/game_repository.dart';
import 'package:symbal_fl/features/game/data/datasources/game_generator_remote.dart';

class SupabaseGameRepository implements GameRepository {
  SupabaseGameRepository({GameGeneratorRemote? remoteDataSource})
      : _remoteDataSource = remoteDataSource ?? GameGeneratorRemote();

  final GameGeneratorRemote _remoteDataSource;


  @override
  Future<MessageModel> generateGame(MessageModel message) async {
    return await _remoteDataSource.generateGame(message);
  }

  @override
  Future<void> saveGame(GameDataModel gameData) async {
    return await _remoteDataSource.saveGame(gameData);
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
}

