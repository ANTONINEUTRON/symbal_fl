
import 'dart:io';

import 'package:symbal_fl/features/game/domain/entities/message_model.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';
import 'package:symbal_fl/features/game/domain/repositories/game_generation_repository.dart';

class SupabaseGameGeneration implements GameGenerationRepository {
  @override
  Future<MessageModel> generateGame(MessageModel message) async{
    // make request to Supabase to generate the game
    // parse response from ai
    // return response to the user

    return MessageModel(
      prompt: 'Generated game based on: ${message.prompt}',
      isUser: false,
      timestamp: DateTime.now(),
      attachedFiles: message.attachedFiles,
    );
  }

  @override
  Future<void> saveGame(GameDataModel gameData) {
    // TODO: implement saveGame
    throw UnimplementedError();
  }

  @override
  Future<List<String>> uploadFiles(List<File> files) {
    // TODO: Implement file upload logic
    // This should upload files to Supabase storage and return their URLs
    return Future.value(files.map((file) => 'https://supabase.storage.url/${file.path}').toList());
  }
}