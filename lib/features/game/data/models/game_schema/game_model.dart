import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_model.freezed.dart';
part 'game_model.g.dart';

@freezed
abstract class GameModel with _$GameModel {
  const factory GameModel({
    required String id,
    required String title,//
    required String description,//
    required String imageUrl,
    String? creatorId,
    String? gameDataId, // reference to the ai generated data
    @Default([]) List<String> gameIds,
    @Default(false) bool isVerified,
    @Default([]) List<String> tags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _GameModel;

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
}

