

class CreateMessageModel {
  CreateMessageModel({
    required this.prompt,
    required this.isUser,
    required this.timestamp,
  });

  final String prompt;
  final bool isUser;
  final DateTime timestamp;
}
