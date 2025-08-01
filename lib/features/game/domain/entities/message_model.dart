

import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';

class MessageModel {
  MessageModel({
    required this.prompt,
    required this.isUser,
    required this.timestamp,
    this.attachedFiles = const [],
    this.game,
  });

  final String prompt;
  final bool isUser;
  final DateTime timestamp;
  final List<String> attachedFiles; 
  final GameDataModel? game;
}