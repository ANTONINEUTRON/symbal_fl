import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:symbal_fl/features/create/data/models/entity_components.dart';

part 'game_data.freezed.dart';
part 'game_data.g.dart';


// Main Game Model
@freezed
abstract class GameData with _$GameData {
  factory GameData({
    required GameMetadata metadata,
    required GameWorld world,
    required List<GameEntity> entities,
    GameRules? gameRules,
    GameUI? ui,
  }) = _GameData;

  factory GameData.fromJson(Map<String, dynamic> json) =>
      _$GameDataFromJson(json);
}

// Metadata
@freezed
abstract class GameMetadata with _$GameMetadata {
  const factory GameMetadata({
    required String title,
    String? description,
    @Default('1.0') String version,
  }) = _GameMetadata;

  factory GameMetadata.fromJson(Map<String, dynamic> json) =>
      _$GameMetadataFromJson(json);
}

// World Configuration
@freezed
abstract class GameWorld with _$GameWorld {
  const factory GameWorld({
    @Default(GameOrientation.landscape) GameOrientation orientation,
    WorldBounds? bounds,
    WorldGravity? gravity,
    WorldBackground? background,
    WorldCamera? camera,
    String? audio,
  }) = _GameWorld;

  factory GameWorld.fromJson(Map<String, dynamic> json) =>
      _$GameWorldFromJson(json);
}

@freezed
abstract class WorldBounds with _$WorldBounds {
  const factory WorldBounds({
    @Default(1200.0) double width,
    @Default(800.0) double height,
    @Default(true) bool autoScale,
  }) = _WorldBounds;

  factory WorldBounds.fromJson(Map<String, dynamic> json) =>
      _$WorldBoundsFromJson(json);
}

@freezed
abstract class WorldGravity with _$WorldGravity {
  const factory WorldGravity({
    @Default(0.0) double x,
    @Default(980.0) double y,
  }) = _WorldGravity;

  factory WorldGravity.fromJson(Map<String, dynamic> json) =>
      _$WorldGravityFromJson(json);
}

@freezed
abstract class WorldBackground with _$WorldBackground {
  const factory WorldBackground({
    String? color,
    String? asset,
    @Default(false) bool parallax,
  }) = _WorldBackground;

  factory WorldBackground.fromJson(Map<String, dynamic> json) =>
      _$WorldBackgroundFromJson(json);
}

@freezed
abstract class WorldCamera with _$WorldCamera {
  const factory WorldCamera({
    @Default(true) bool followPlayer,
    CameraBounds? bounds,
  }) = _WorldCamera;

  factory WorldCamera.fromJson(Map<String, dynamic> json) =>
      _$WorldCameraFromJson(json);
}

@freezed
abstract class CameraBounds with _$CameraBounds {
  const factory CameraBounds({
    required double x,
    required double y,
    required double width,
    required double height,
  }) = _CameraBounds;

  factory CameraBounds.fromJson(Map<String, dynamic> json) =>
      _$CameraBoundsFromJson(json);
}

// Entity System
@freezed
abstract class GameEntity with _$GameEntity {
  const factory GameEntity({
    required String id,
    @Default([]) List<String> tags,
    required EntityComponents components,
  }) = _GameEntity;

  factory GameEntity.fromJson(Map<String, dynamic> json) =>
      _$GameEntityFromJson(json);
}

// Game Rules
@freezed
abstract class GameRules with _$GameRules {
  const factory GameRules({
    @Default([]) List<WinCondition> winConditions,
    @Default([]) List<LoseCondition> loseConditions,
    @Default(3) int playerLives,
    double? timeLimit,
  }) = _GameRules;

  factory GameRules.fromJson(Map<String, dynamic> json) =>
      _$GameRulesFromJson(json);
}

@freezed
abstract class WinCondition with _$WinCondition {
  const factory WinCondition({
    required WinConditionType type,
    String? entityId,
    String? target,
    double? value,
  }) = _WinCondition;

  factory WinCondition.fromJson(Map<String, dynamic> json) =>
      _$WinConditionFromJson(json);
}

@freezed
abstract class LoseCondition with _$LoseCondition {
  const factory LoseCondition({
    required LoseConditionType type,
    double? value,
  }) = _LoseCondition;

  factory LoseCondition.fromJson(Map<String, dynamic> json) =>
      _$LoseConditionFromJson(json);
}

// UI Configuration
@freezed
abstract class GameUI with _$GameUI {
  const factory GameUI({
    @Default(true) bool showScore,
    @Default(true) bool showHealth,
    @Default(false) bool showTimer,
    GameControls? controls,
  }) = _GameUI;

  factory GameUI.fromJson(Map<String, dynamic> json) =>
      _$GameUIFromJson(json);
}

@freezed
abstract class GameControls with _$GameControls {
  const factory GameControls({
    @Default(true) bool touchControls,
    @Default(true) bool keyboardControls,
  }) = _GameControls;

  factory GameControls.fromJson(Map<String, dynamic> json) =>
      _$GameControlsFromJson(json);
}

enum GameOrientation {
  @JsonValue('landscape')
  landscape,
  @JsonValue('portrait')
  portrait,
  @JsonValue('both')
  both,
}

enum WinConditionType {
  @JsonValue('reachEntity')
  reachEntity,
  @JsonValue('collectAll')
  collectAll,
  @JsonValue('surviveTime')
  surviveTime,
  @JsonValue('score')
  score,
}

enum LoseConditionType {
  @JsonValue('playerDeath')
  playerDeath,
  @JsonValue('timeOut')
  timeOut,
  @JsonValue('fallOffWorld')
  fallOffWorld,
}


