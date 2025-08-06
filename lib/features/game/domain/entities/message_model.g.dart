// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      prompt: json['prompt'] as String,
      isUser: json['isUser'] as bool,
      timestamp: DateTime.parse(json['timestamp'] as String),
      attachedFiles:
          (json['attachedFiles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      gameData: json['gameData'] == null
          ? null
          : GameDataModel.fromJson(json['gameData'] as Map<String, dynamic>),
      gameModel: json['gameModel'] == null
          ? null
          : GameModel.fromJson(json['gameModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'prompt': instance.prompt,
      'isUser': instance.isUser,
      'timestamp': instance.timestamp.toIso8601String(),
      'attachedFiles': instance.attachedFiles,
      'gameData': instance.gameData,
      'gameModel': instance.gameModel,
    };
