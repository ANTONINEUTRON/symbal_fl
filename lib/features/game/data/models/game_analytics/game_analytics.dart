import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_analytics.freezed.dart';
part 'game_analytics.g.dart';

@freezed
abstract class GameAnalytics with _$GameAnalytics {
  const factory GameAnalytics({
    required String gameId,
    @Default(0) int likes,
    @Default(0) int plays,
    @Default(0) int shares,
    @Default(0) int comments,
    DateTime? lastUpdated,
  }) = _GameAnalytics;

  factory GameAnalytics.fromJson(Map<String, dynamic> json) =>
      _$GameAnalyticsFromJson(json);
}