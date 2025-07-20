

class CreateChatMessage {
  final String text;
  final bool isUser;
  final DateTime timestamp;

  CreateChatMessage({
    required this.text,
    required this.isUser,
    required this.timestamp,
  });
}
