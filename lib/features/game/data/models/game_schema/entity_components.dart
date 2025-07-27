part of 'game_data_model.dart';

@freezed
abstract class EntityComponentsData with _$EntityComponentsData {
  const factory EntityComponentsData({
    TransformComponent? transform,
    SSpriteComponent? sprite,
    AnimationComponent? animation,
    PhysicsComponent? physics,
    CollisionComponent? collision,
    MovementComponent? movement,
    HealthComponent? health,
    AIComponent? ai,
    CollectibleComponent? collectible,
    DamageComponent? damage,
    PlatformComponent? platform,
    TriggerComponent? trigger,
  }) = _EntityComponentsData;

  factory EntityComponentsData.fromJson(Map<String, dynamic> json) =>
      _$EntityComponentsDataFromJson(json);
}

// Individual Components
@freezed
abstract class TransformComponent with _$TransformComponent {
  const factory TransformComponent({
    required double x,
    required double y,
    @Default(0.0) double rotation,
    @Default(1.0) double scale,
  }) = _TransformComponent;

  factory TransformComponent.fromJson(Map<String, dynamic> json) =>
      _$TransformComponentFromJson(json);
}

@freezed
abstract class SSpriteComponent with _$SSpriteComponent {
  const factory SSpriteComponent({
    required String asset,
    double? width,
    double? height,
    @Default(false) bool flipX,
    @Default(false) bool flipY,
  }) = _SSpriteComponent;

  factory SSpriteComponent.fromJson(Map<String, dynamic> json) =>
      _$SSpriteComponentFromJson(json);
}

@freezed
abstract class AnimationComponent with _$AnimationComponent {
  const factory AnimationComponent({
    required String spriteSheet,
    required int frameCount,
    required double stepTime,
    @Default(true) bool loop,
  }) = _AnimationComponent;

  factory AnimationComponent.fromJson(Map<String, dynamic> json) =>
      _$AnimationComponentFromJson(json);
}

@freezed
abstract class PhysicsComponent with _$PhysicsComponent {
  const factory PhysicsComponent({
    @Default(PhysicsBodyType.dynamic) PhysicsBodyType bodyType,
    @Default(1.0) double mass,
    @Default(0.3) double friction,
    @Default(0.0) double restitution,
    @Default(false) bool fixedRotation,
  }) = _PhysicsComponent;

  factory PhysicsComponent.fromJson(Map<String, dynamic> json) =>
      _$PhysicsComponentFromJson(json);
}

@freezed
abstract class CollisionComponent with _$CollisionComponent {
  const factory CollisionComponent({
    @Default(CollisionShape.rectangle) CollisionShape shape,
    @Default(false) bool isSensor,
    @Default([]) List<String> collidesWith,
  }) = _CollisionComponent;

  factory CollisionComponent.fromJson(Map<String, dynamic> json) =>
      _$CollisionComponentFromJson(json);
}

@freezed 
abstract class MovementComponent with _$MovementComponent {
  const factory MovementComponent({
    @Default(100.0) double speed,
    double? jumpForce,
    @Default(true) bool canMove,
    @Default(false) bool canJump,
    @Default(0.5) double airControl,
  }) = _MovementComponent;

  factory MovementComponent.fromJson(Map<String, dynamic> json) =>
      _$MovementComponentFromJson(json);
}

@freezed
abstract class HealthComponent with _$HealthComponent {
  const factory HealthComponent({
    @Default(1) int max,
    int? current,
    @Default(1.0) double invulnerabilityTime,
  }) = _HealthComponent;

  factory HealthComponent.fromJson(Map<String, dynamic> json) =>
      _$HealthComponentFromJson(json);
}

@freezed
abstract class AIComponent with _$AIComponent {
  const factory AIComponent({
    required AIType type,
    @Default(50.0) double speed,
    @Default(100.0) double detectionRange,
    @Default([]) List<Position> waypoints,
    @Default(1.0) double waitTime,
  }) = _AIComponent;

  factory AIComponent.fromJson(Map<String, dynamic> json) =>
      _$AIComponentFromJson(json);
}

@freezed
abstract class CollectibleComponent with _$CollectibleComponent {
  const factory CollectibleComponent({
    @Default(10) int value,
    @Default(CollectibleType.coin) CollectibleType type,
    @Default(true) bool destroyOnCollect,
    CollectibleEffect? effect,
  }) = _CollectibleComponent;

  factory CollectibleComponent.fromJson(Map<String, dynamic> json) =>
      _$CollectibleComponentFromJson(json);
}

@freezed
abstract class CollectibleEffect with _$CollectibleEffect {
  const factory CollectibleEffect({
    required EffectType type,
    required double value,
  }) = _CollectibleEffect;

  factory CollectibleEffect.fromJson(Map<String, dynamic> json) =>
      _$CollectibleEffectFromJson(json);
}

@freezed
abstract class DamageComponent with _$DamageComponent {
  const factory DamageComponent({
    @Default(1) int amount,
    @Default(['player']) List<String> damageTypes,
    @Default(0.0) double knockback,
  }) = _DamageComponent;

  factory DamageComponent.fromJson(Map<String, dynamic> json) =>
      _$DamageComponentFromJson(json);
}

@freezed
abstract class PlatformComponent with _$PlatformComponent {
  const factory PlatformComponent({
    @Default(false) bool oneWay,
    MovingPlatform? moving,
  }) = _PlatformComponent;

  factory PlatformComponent.fromJson(Map<String, dynamic> json) =>
      _$PlatformComponentFromJson(json);
}

@freezed
abstract class MovingPlatform with _$MovingPlatform {
  const factory MovingPlatform({
    required double speed,
    required List<Position> path,
  }) = _MovingPlatform;

  factory MovingPlatform.fromJson(Map<String, dynamic> json) =>
      _$MovingPlatformFromJson(json);
}

@freezed
abstract class TriggerComponent with _$TriggerComponent {
  const factory TriggerComponent({
    required TriggerEvent event,
    @Default(false) bool once,
    String? target,
  }) = _TriggerComponent;

  factory TriggerComponent.fromJson(Map<String, dynamic> json) =>
      _$TriggerComponentFromJson(json);
}


// Enums
enum PhysicsBodyType {
  @JsonValue('static')
  static,
  @JsonValue('dynamic')  
  dynamic,
  @JsonValue('kinematic')
  kinematic,
}

enum CollisionShape {
  @JsonValue('rectangle')
  rectangle,
  @JsonValue('circle')
  circle,
}

enum AIType {
  @JsonValue('patrol')
  patrol,
  @JsonValue('follow')
  follow,
  @JsonValue('guard')
  guard,
  @JsonValue('wander')
  wander,
}

enum CollectibleType {
  @JsonValue('coin')
  coin,
  @JsonValue('powerup')
  powerup,
  @JsonValue('key')
  key,
  @JsonValue('gem')
  gem,
}

enum EffectType {
  @JsonValue('score')
  score,
  @JsonValue('health')
  health,
  @JsonValue('speed')
  speed,
  @JsonValue('jump')
  jump,
}

enum TriggerEvent {
  @JsonValue('win')
  win,
  @JsonValue('lose')
  lose,
  @JsonValue('checkpoint')
  checkpoint,
  @JsonValue('door')
  door,
  @JsonValue('spawn')
  spawn,
}

// Utility abstract Classes
@freezed
abstract class Position with _$Position {
  const factory Position({
    required double x,
    required double y,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);
}
