// lib/features/game/domain/entities/message_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart'; // ✅ Add for JSON

@freezed
abstract class MessageModel with _$MessageModel {
  const factory MessageModel({
    required String prompt,
    required bool isUser,
    required DateTime timestamp,
    @Default([]) List<String> attachedFiles,
    GameDataModel? gameData,
    GameModel? gameModel,
  }) = _MessageModel;

  // ✅ Add JSON serialization
  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}