import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_model.freezed.dart';
part 'game_model.g.dart';

// Represents a deployed game model in the application
@freezed
abstract class GameModel with _$GameModel {
  const factory GameModel({
    required String id,
    required String title,
    required String description,

    @JsonKey(name: 'image_url')
    required String imageUrl,

    @JsonKey(name: "creator_id")
    String? creatorId,

    @JsonKey(name: "game_data_id")
    String? gameDataId, // reference to the ai generated data

    @JsonKey(name: "game_ids")
    @Default([]) List<String> gameIds,

    @JsonKey(name: "is_verified")
    @Default(false) bool isVerified,

    @Default([]) List<String> tags,

    @Default([]) List<String> assets,

    // Version for local game management
    @Default(1) int version,

    @JsonKey(name: "created_at")
    DateTime? createdAt,

    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
  }) = _GameModel;

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
}

