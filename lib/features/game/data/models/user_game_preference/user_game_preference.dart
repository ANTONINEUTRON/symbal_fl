import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_game_preference.freezed.dart';
part 'user_game_preference.g.dart';

@freezed
abstract class UserGamePreference with _$UserGamePreference {
  const factory UserGamePreference({
    required String userId,
    required String gameId,
    @Default(false) bool isFavorite,
    @Default(false) bool liked,
    @Default(false) bool isBookmarked,
    DateTime? lastPlayed,
  }) = _UserGamePreference;

  factory UserGamePreference.fromJson(Map<String, dynamic> json) =>
      _$UserGamePreferenceFromJson(json);
}
