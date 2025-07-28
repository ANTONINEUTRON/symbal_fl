import 'package:symbal_fl/features/game/data/models/create_message_model.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';

class GameGeneratorRemote {
  Future<CreateMessageModel> generateGame(CreateMessageModel message) async {
    // Simulate network call
    await Future.delayed(const Duration(seconds: 2));
    return message;
  }

  Future<void> saveGame(GameDataModel gameData) async {
    // Simulate network call
    await Future.delayed(const Duration(seconds: 2));
  }
}
