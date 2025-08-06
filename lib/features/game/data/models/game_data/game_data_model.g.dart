// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameDataModelImpl _$$GameDataModelImplFromJson(Map<String, dynamic> json) =>
    _$GameDataModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      renderableContent: json['html'] as String,
      prompt: json['original_prompt'] as String,
      message: json['message_to_user'] as String,
      userId: json['user_id'] as String?,
      assets:
          (json['assets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      status: json['status'] as String? ?? 'generated',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$GameDataModelImplToJson(_$GameDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'tags': instance.tags,
      'html': instance.renderableContent,
      'original_prompt': instance.prompt,
      'message_to_user': instance.message,
      'user_id': instance.userId,
      'assets': instance.assets,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
