import 'dart:io';

import 'package:equatable/equatable.dart';

class CreateGameState extends Equatable{
  const CreateGameState({
    this.typedPrompt,
    this.selectedAssets = const [],
  });

  final String? typedPrompt;
  final List<File> selectedAssets;

  @override
  List<Object?> get props => [typedPrompt, selectedAssets,];

  CreateGameState copyWith({
    String? typedPrompt,
    List<File>? selectedAssets,
  }) {
    return CreateGameState(
      typedPrompt: typedPrompt ?? this.typedPrompt,
      selectedAssets: selectedAssets ?? this.selectedAssets,
    );
  }
}