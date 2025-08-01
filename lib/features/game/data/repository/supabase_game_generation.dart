import 'dart:io';

import 'package:symbal_fl/features/game/domain/entities/message_model.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';
import 'package:symbal_fl/features/game/domain/repositories/game_generation_repository.dart';
import 'package:symbal_fl/features/game/data/datasources/game_generator_remote.dart';

class SupabaseGameGeneration implements GameGenerationRepository {
  final GameGeneratorRemote _remoteDataSource;

  SupabaseGameGeneration({GameGeneratorRemote? remoteDataSource})
      : _remoteDataSource = remoteDataSource ?? GameGeneratorRemote();

  @override
  Future<MessageModel> generateGame(MessageModel message) async {
    // Delegate to remote data source
    return await _remoteDataSource.generateGame(message);
  }

  @override
  Future<void> saveGame(GameDataModel gameData) async {
    // Delegate to remote data source
    return await _remoteDataSource.saveGame(gameData);
  }

  @override
  Future<List<String>> uploadFiles(List<File> files) async {
    // Delegate to remote data source
    return await _remoteDataSource.uploadFiles(files);
  }
}