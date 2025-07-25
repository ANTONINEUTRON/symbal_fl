import 'package:flutter/material.dart';
import 'package:symbal_fl/features/create/domain/models/create_message_model.dart';
import 'package:symbal_fl/features/create/ui/widgets/message_bubble.dart';
import 'package:symbal_fl/features/create/ui/widgets/typing_indicator.dart';

class CreateChatView extends StatelessWidget {
  const CreateChatView({
    super.key,
    required this.scrollController,
    required this.messages,
    required this.isGenerating,
  });

  final ScrollController scrollController;
  final List<CreateMessageModel> messages;
  final bool isGenerating;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: messages.length + (isGenerating ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == messages.length && isGenerating) {
          return TypingIndicator();
        }
        return MessageBubble(message: messages[index]);
      },
    );
  }
}
