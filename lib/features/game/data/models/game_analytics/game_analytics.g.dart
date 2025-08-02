// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_analytics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameAnalytics _$GameAnalyticsFromJson(Map<String, dynamic> json) =>
    _GameAnalytics(
      gameId: json['gameId'] as String,
      likes: (json['likes'] as num?)?.toInt() ?? 0,
      plays: (json['plays'] as num?)?.toInt() ?? 0,
      shares: (json['shares'] as num?)?.toInt() ?? 0,
      comments: (json['comments'] as num?)?.toInt() ?? 0,
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$GameAnalyticsToJson(_GameAnalytics instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'likes': instance.likes,
      'plays': instance.plays,
      'shares': instance.shares,
      'comments': instance.comments,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };
