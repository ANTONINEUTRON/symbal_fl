import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/game/domain/entities/message_model.dart';
import 'package:symbal_fl/features/game/domain/repositories/game_repository.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_state.dart';

class CreateGameCubit extends Cubit<CreateGameState> {
  CreateGameCubit({required this.gameGenerationRepository})
    : super(const CreateGameState());

  final GameRepository gameGenerationRepository;

  Future<void> createGame({
    required String prompt,
    required List<File> selectedFiles,
  }) async {
    try {
      // upload files to storage
      var uploadedFilesUrl = await gameGenerationRepository.uploadFiles(
        selectedFiles,
      );
      print("Uploaded files URLs: $uploadedFilesUrl");

      // append to prompt and send to backend
      var message = MessageModel(
        prompt: prompt,
        isUser: true,
        timestamp: DateTime.now(),
        attachedFiles: uploadedFilesUrl,
      );
      print("Sending message: $message");

      // add to chatList state
      emit(
        state.copyWith(
          chatList: [...state.chatList, message],
          isGenerating: true,
        ),
      );

      print("Emitted something: $state");

      // call backend to generate game
      MessageModel aiMessage = await gameGenerationRepository.generateGame(
        message,
      );
      emit(
        state.copyWith(
           chatList: [...state.chatList, aiMessage],
          retriesCount: state.retriesCount - 1,
          isGenerating: false,
        ),
      );
      print("Received AI message: $aiMessage");

      // saveOrCreate gameSchema containing game instance to db
    } catch (e) {
      //TODO implement state tracking
      // handle error
      if (kDebugMode) {
        print('Error creating game: $e');
      }
    }
  }

  Future<void> saveGameSchema() async {
    // TODO: Implement saving game schema logic
    // save from state to
  }

  void addRetries(int i) {}
}
