// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameModelImpl _$$GameModelImplFromJson(Map<String, dynamic> json) =>
    _$GameModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      creatorId: json['creatorId'] as String?,
      gameDataId: json['gameDataId'] as String?,
      gameIds:
          (json['gameIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isVerified: json['isVerified'] as bool? ?? false,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$GameModelImplToJson(_$GameModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'creatorId': instance.creatorId,
      'gameDataId': instance.gameDataId,
      'gameIds': instance.gameIds,
      'isVerified': instance.isVerified,
      'tags': instance.tags,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
