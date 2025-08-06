// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameModelImpl _$$GameModelImplFromJson(
  Map<String, dynamic> json,
) => _$GameModelImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  imageUrl: json['image_url'] as String,
  creatorId: json['creator_id'] as String?,
  gameDataId: json['game_data_id'] as String?,
  gameIds:
      (json['game_ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  isVerified: json['is_verified'] as bool? ?? false,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  assets:
      (json['assets'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  version: (json['version'] as num?)?.toInt() ?? 1,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$GameModelImplToJson(_$GameModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'creator_id': instance.creatorId,
      'game_data_id': instance.gameDataId,
      'game_ids': instance.gameIds,
      'is_verified': instance.isVerified,
      'tags': instance.tags,
      'assets': instance.assets,
      'version': instance.version,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
