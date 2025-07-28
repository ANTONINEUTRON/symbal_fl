// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameStory _$GameStoryFromJson(Map<String, dynamic> json) => _GameStory(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  imageUrl: json['imageUrl'] as String,
  duration: json['duration'] as String,
  story: json['story'] as String?,
  gameType: json['gameType'] as String,
  creatorId: json['creatorId'] as String?,
  gameDataId: json['gameDataId'] as String?,
  likes: (json['likes'] as num?)?.toInt() ?? 0,
  plays: (json['plays'] as num?)?.toInt() ?? 0,
  shares: (json['shares'] as num?)?.toInt() ?? 0,
  comments: (json['comments'] as num?)?.toInt() ?? 0,
  isFavorite: json['isFavorite'] as bool? ?? false,
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

Map<String, dynamic> _$GameStoryToJson(_GameStory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'duration': instance.duration,
      'story': instance.story,
      'gameType': instance.gameType,
      'creatorId': instance.creatorId,
      'gameDataId': instance.gameDataId,
      'likes': instance.likes,
      'plays': instance.plays,
      'shares': instance.shares,
      'comments': instance.comments,
      'isFavorite': instance.isFavorite,
      'isVerified': instance.isVerified,
      'tags': instance.tags,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
