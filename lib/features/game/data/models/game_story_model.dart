import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_story_model.freezed.dart';
part 'game_story_model.g.dart';

/// Non AI DATA
@freezed
abstract class GameStory with _$GameStory {
  const factory GameStory({
    required String id,
    required String title,//
    required String description,//
    required String imageUrl,
    required String duration,//
    required String story,//
    required String gameType,
    String? creatorId,
    String? gameDataId, //reference to the ai generated data
    @Default(0) int likes,
    @Default(0) int plays,
    @Default(0) int shares,
    @Default(0) int comments,
    @Default(false) bool isFavorite,
    @Default(false) bool isVerified,
    @Default([]) List<String> tags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _GameStory;

  factory GameStory.fromJson(Map<String, dynamic> json) =>
      _$GameStoryFromJson(json);
}

