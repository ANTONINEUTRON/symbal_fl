import 'package:flutter/material.dart';


class ChatInputField extends StatelessWidget {
  const ChatInputField({
    super.key, 
    required this.onSendMessage, 
    required this.retriesCount, 
    required this.isGenerating, 
    required this.promptController, 
    required this.textFieldFocus
  });
  final TextEditingController promptController;
  final FocusNode textFieldFocus;
  final Function onSendMessage;
  final int retriesCount;
  final bool isGenerating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        border: Border(
          top: BorderSide(color: Colors.grey[700]!),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.grey[600]!),
              ),
              child: TextField(
                controller: promptController,
                focusNode: textFieldFocus,
                style: const TextStyle(color: Colors.white),
                maxLines: null,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  hintText: 'Describe your dream game...',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                ),
                onSubmitted: (_) => onSendMessage(),
              ),
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: (retriesCount > 0 && !isGenerating) ? () => onSendMessage() : null,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                gradient: retriesCount > 0 && !isGenerating
                    ? const LinearGradient(
                        colors: [Colors.purple, Colors.pink],
                      )
                    : null,
                color: retriesCount <= 0 || isGenerating
                    ? Colors.grey[600]
                    : null,
                shape: BoxShape.circle,
              ),
              child: Icon(
                isGenerating ? Icons.stop : Icons.send,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  
  }
}
