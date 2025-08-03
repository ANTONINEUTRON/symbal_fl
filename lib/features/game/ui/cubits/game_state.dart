import 'package:equatable/equatable.dart';
import 'package:symbal_fl/features/game/domain/entities/message_model.dart';

class CreateGameState extends Equatable {
  const CreateGameState({
    this.retriesCount = 6,
    this.isGenerating = false,
    this.chatList = const [],
  });

  final int retriesCount;
  final bool isGenerating;
  final List<MessageModel> chatList;

  @override
  List<Object?> get props => [
    retriesCount,
    isGenerating,
    chatList,
  ];

  CreateGameState copyWith({
    int? retriesCount,
    bool? isGenerating,
    List<MessageModel>? chatList,
  }) {
    return CreateGameState(
      retriesCount: retriesCount ?? this.retriesCount,
      isGenerating: isGenerating ?? this.isGenerating,
      chatList: chatList ?? this.chatList,
    );
  }
}
