
import 'package:symbal_fl/features/create/domain/models/create_message_model.dart';
import 'package:symbal_fl/features/create/domain/models/game_data_model.dart';

/// Repository interface for game generation
/// This repository is responsible for generating game data based on user input
abstract class GameGenerationRepository {
  Future<CreateMessageModel> generateGame(CreateMessageModel message);

  Future<void> saveGame(GameData gameData);

}