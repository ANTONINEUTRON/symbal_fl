
import 'dart:io';

import 'package:symbal_fl/features/game/domain/entities/message_model.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';

/// Repository interface for game generation
/// This repository is responsible for generating game data based on user input
abstract class GameGenerationRepository {
  Future<MessageModel> generateGame(MessageModel message);

  Future<void> saveGame(GameDataModel gameData);

  Future<List<String>> uploadFiles(List<File> files);
}