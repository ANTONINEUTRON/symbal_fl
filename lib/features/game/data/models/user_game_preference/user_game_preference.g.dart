// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_game_preference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserGamePreferenceImpl _$$UserGamePreferenceImplFromJson(
  Map<String, dynamic> json,
) => _$UserGamePreferenceImpl(
  userId: json['userId'] as String,
  gameId: json['gameId'] as String,
  isFavorite: json['isFavorite'] as bool? ?? false,
  liked: json['liked'] as bool? ?? false,
  isBookmarked: json['isBookmarked'] as bool? ?? false,
  lastPlayed: json['lastPlayed'] == null
      ? null
      : DateTime.parse(json['lastPlayed'] as String),
);

Map<String, dynamic> _$$UserGamePreferenceImplToJson(
  _$UserGamePreferenceImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'gameId': instance.gameId,
  'isFavorite': instance.isFavorite,
  'liked': instance.liked,
  'isBookmarked': instance.isBookmarked,
  'lastPlayed': instance.lastPlayed?.toIso8601String(),
};
