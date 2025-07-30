
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/game/ui/cubits/create_game_state.dart';

class CreateGameCubit extends Cubit<CreateGameState> {
  CreateGameCubit() : super(const CreateGameState());

  void setTypedPrompt(String? typedPrompt) {
    emit(state.copyWith(typedPrompt: typedPrompt));
  }

  void updateSelectedAssets(List<File> selectedAssets) {
    emit(state.copyWith(selectedAssets: selectedAssets));
  }

  Future<void> createGame() async {
    // Takes the prompt and assets and pass to usecase
  }
}
