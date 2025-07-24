// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EntityComponents _$EntityComponentsFromJson(
  Map<String, dynamic> json,
) => _EntityComponents(
  transform: json['transform'] == null
      ? null
      : TransformComponent.fromJson(json['transform'] as Map<String, dynamic>),
  sprite: json['sprite'] == null
      ? null
      : SpriteComponent.fromJson(json['sprite'] as Map<String, dynamic>),
  animation: json['animation'] == null
      ? null
      : AnimationComponent.fromJson(json['animation'] as Map<String, dynamic>),
  physics: json['physics'] == null
      ? null
      : PhysicsComponent.fromJson(json['physics'] as Map<String, dynamic>),
  collision: json['collision'] == null
      ? null
      : CollisionComponent.fromJson(json['collision'] as Map<String, dynamic>),
  movement: json['movement'] == null
      ? null
      : MovementComponent.fromJson(json['movement'] as Map<String, dynamic>),
  health: json['health'] == null
      ? null
      : HealthComponent.fromJson(json['health'] as Map<String, dynamic>),
  ai: json['ai'] == null
      ? null
      : AIComponent.fromJson(json['ai'] as Map<String, dynamic>),
  collectible: json['collectible'] == null
      ? null
      : CollectibleComponent.fromJson(
          json['collectible'] as Map<String, dynamic>,
        ),
  damage: json['damage'] == null
      ? null
      : DamageComponent.fromJson(json['damage'] as Map<String, dynamic>),
  platform: json['platform'] == null
      ? null
      : PlatformComponent.fromJson(json['platform'] as Map<String, dynamic>),
  trigger: json['trigger'] == null
      ? null
      : TriggerComponent.fromJson(json['trigger'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EntityComponentsToJson(_EntityComponents instance) =>
    <String, dynamic>{
      'transform': instance.transform,
      'sprite': instance.sprite,
      'animation': instance.animation,
      'physics': instance.physics,
      'collision': instance.collision,
      'movement': instance.movement,
      'health': instance.health,
      'ai': instance.ai,
      'collectible': instance.collectible,
      'damage': instance.damage,
      'platform': instance.platform,
      'trigger': instance.trigger,
    };

_TransformComponent _$TransformComponentFromJson(Map<String, dynamic> json) =>
    _TransformComponent(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      rotation: (json['rotation'] as num?)?.toDouble() ?? 0.0,
      scale: (json['scale'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$TransformComponentToJson(_TransformComponent instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'rotation': instance.rotation,
      'scale': instance.scale,
    };

_SpriteComponent _$SpriteComponentFromJson(Map<String, dynamic> json) =>
    _SpriteComponent(
      asset: json['asset'] as String,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      flipX: json['flipX'] as bool? ?? false,
      flipY: json['flipY'] as bool? ?? false,
    );

Map<String, dynamic> _$SpriteComponentToJson(_SpriteComponent instance) =>
    <String, dynamic>{
      'asset': instance.asset,
      'width': instance.width,
      'height': instance.height,
      'flipX': instance.flipX,
      'flipY': instance.flipY,
    };

_AnimationComponent _$AnimationComponentFromJson(Map<String, dynamic> json) =>
    _AnimationComponent(
      spriteSheet: json['spriteSheet'] as String,
      frameCount: (json['frameCount'] as num).toInt(),
      stepTime: (json['stepTime'] as num).toDouble(),
      loop: json['loop'] as bool? ?? true,
    );

Map<String, dynamic> _$AnimationComponentToJson(_AnimationComponent instance) =>
    <String, dynamic>{
      'spriteSheet': instance.spriteSheet,
      'frameCount': instance.frameCount,
      'stepTime': instance.stepTime,
      'loop': instance.loop,
    };

_PhysicsComponent _$PhysicsComponentFromJson(Map<String, dynamic> json) =>
    _PhysicsComponent(
      bodyType:
          $enumDecodeNullable(_$PhysicsBodyTypeEnumMap, json['bodyType']) ??
          PhysicsBodyType.dynamic,
      mass: (json['mass'] as num?)?.toDouble() ?? 1.0,
      friction: (json['friction'] as num?)?.toDouble() ?? 0.3,
      restitution: (json['restitution'] as num?)?.toDouble() ?? 0.0,
      fixedRotation: json['fixedRotation'] as bool? ?? false,
    );

Map<String, dynamic> _$PhysicsComponentToJson(_PhysicsComponent instance) =>
    <String, dynamic>{
      'bodyType': _$PhysicsBodyTypeEnumMap[instance.bodyType]!,
      'mass': instance.mass,
      'friction': instance.friction,
      'restitution': instance.restitution,
      'fixedRotation': instance.fixedRotation,
    };

const _$PhysicsBodyTypeEnumMap = {
  PhysicsBodyType.static: 'static',
  PhysicsBodyType.dynamic: 'dynamic',
  PhysicsBodyType.kinematic: 'kinematic',
};

_CollisionComponent _$CollisionComponentFromJson(Map<String, dynamic> json) =>
    _CollisionComponent(
      shape:
          $enumDecodeNullable(_$CollisionShapeEnumMap, json['shape']) ??
          CollisionShape.rectangle,
      isSensor: json['isSensor'] as bool? ?? false,
      collidesWith:
          (json['collidesWith'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CollisionComponentToJson(_CollisionComponent instance) =>
    <String, dynamic>{
      'shape': _$CollisionShapeEnumMap[instance.shape]!,
      'isSensor': instance.isSensor,
      'collidesWith': instance.collidesWith,
    };

const _$CollisionShapeEnumMap = {
  CollisionShape.rectangle: 'rectangle',
  CollisionShape.circle: 'circle',
};

_MovementComponent _$MovementComponentFromJson(Map<String, dynamic> json) =>
    _MovementComponent(
      speed: (json['speed'] as num?)?.toDouble() ?? 100.0,
      jumpForce: (json['jumpForce'] as num?)?.toDouble(),
      canMove: json['canMove'] as bool? ?? true,
      canJump: json['canJump'] as bool? ?? false,
      airControl: (json['airControl'] as num?)?.toDouble() ?? 0.5,
    );

Map<String, dynamic> _$MovementComponentToJson(_MovementComponent instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'jumpForce': instance.jumpForce,
      'canMove': instance.canMove,
      'canJump': instance.canJump,
      'airControl': instance.airControl,
    };

_HealthComponent _$HealthComponentFromJson(Map<String, dynamic> json) =>
    _HealthComponent(
      max: (json['max'] as num?)?.toInt() ?? 1,
      current: (json['current'] as num?)?.toInt(),
      invulnerabilityTime:
          (json['invulnerabilityTime'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$HealthComponentToJson(_HealthComponent instance) =>
    <String, dynamic>{
      'max': instance.max,
      'current': instance.current,
      'invulnerabilityTime': instance.invulnerabilityTime,
    };

_AIComponent _$AIComponentFromJson(Map<String, dynamic> json) => _AIComponent(
  type: $enumDecode(_$AITypeEnumMap, json['type']),
  speed: (json['speed'] as num?)?.toDouble() ?? 50.0,
  detectionRange: (json['detectionRange'] as num?)?.toDouble() ?? 100.0,
  waypoints:
      (json['waypoints'] as List<dynamic>?)
          ?.map((e) => Position.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  waitTime: (json['waitTime'] as num?)?.toDouble() ?? 1.0,
);

Map<String, dynamic> _$AIComponentToJson(_AIComponent instance) =>
    <String, dynamic>{
      'type': _$AITypeEnumMap[instance.type]!,
      'speed': instance.speed,
      'detectionRange': instance.detectionRange,
      'waypoints': instance.waypoints,
      'waitTime': instance.waitTime,
    };

const _$AITypeEnumMap = {
  AIType.patrol: 'patrol',
  AIType.follow: 'follow',
  AIType.guard: 'guard',
  AIType.wander: 'wander',
};

_CollectibleComponent _$CollectibleComponentFromJson(
  Map<String, dynamic> json,
) => _CollectibleComponent(
  value: (json['value'] as num?)?.toInt() ?? 10,
  type:
      $enumDecodeNullable(_$CollectibleTypeEnumMap, json['type']) ??
      CollectibleType.coin,
  destroyOnCollect: json['destroyOnCollect'] as bool? ?? true,
  effect: json['effect'] == null
      ? null
      : CollectibleEffect.fromJson(json['effect'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CollectibleComponentToJson(
  _CollectibleComponent instance,
) => <String, dynamic>{
  'value': instance.value,
  'type': _$CollectibleTypeEnumMap[instance.type]!,
  'destroyOnCollect': instance.destroyOnCollect,
  'effect': instance.effect,
};

const _$CollectibleTypeEnumMap = {
  CollectibleType.coin: 'coin',
  CollectibleType.powerup: 'powerup',
  CollectibleType.key: 'key',
  CollectibleType.gem: 'gem',
};

_CollectibleEffect _$CollectibleEffectFromJson(Map<String, dynamic> json) =>
    _CollectibleEffect(
      type: $enumDecode(_$EffectTypeEnumMap, json['type']),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$CollectibleEffectToJson(_CollectibleEffect instance) =>
    <String, dynamic>{
      'type': _$EffectTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$EffectTypeEnumMap = {
  EffectType.score: 'score',
  EffectType.health: 'health',
  EffectType.speed: 'speed',
  EffectType.jump: 'jump',
};

_DamageComponent _$DamageComponentFromJson(Map<String, dynamic> json) =>
    _DamageComponent(
      amount: (json['amount'] as num?)?.toInt() ?? 1,
      damageTypes:
          (json['damageTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ['player'],
      knockback: (json['knockback'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$DamageComponentToJson(_DamageComponent instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'damageTypes': instance.damageTypes,
      'knockback': instance.knockback,
    };

_PlatformComponent _$PlatformComponentFromJson(Map<String, dynamic> json) =>
    _PlatformComponent(
      oneWay: json['oneWay'] as bool? ?? false,
      moving: json['moving'] == null
          ? null
          : MovingPlatform.fromJson(json['moving'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlatformComponentToJson(_PlatformComponent instance) =>
    <String, dynamic>{'oneWay': instance.oneWay, 'moving': instance.moving};

_MovingPlatform _$MovingPlatformFromJson(Map<String, dynamic> json) =>
    _MovingPlatform(
      speed: (json['speed'] as num).toDouble(),
      path: (json['path'] as List<dynamic>)
          .map((e) => Position.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovingPlatformToJson(_MovingPlatform instance) =>
    <String, dynamic>{'speed': instance.speed, 'path': instance.path};

_TriggerComponent _$TriggerComponentFromJson(Map<String, dynamic> json) =>
    _TriggerComponent(
      event: $enumDecode(_$TriggerEventEnumMap, json['event']),
      once: json['once'] as bool? ?? false,
      target: json['target'] as String?,
    );

Map<String, dynamic> _$TriggerComponentToJson(_TriggerComponent instance) =>
    <String, dynamic>{
      'event': _$TriggerEventEnumMap[instance.event]!,
      'once': instance.once,
      'target': instance.target,
    };

const _$TriggerEventEnumMap = {
  TriggerEvent.win: 'win',
  TriggerEvent.lose: 'lose',
  TriggerEvent.checkpoint: 'checkpoint',
  TriggerEvent.door: 'door',
  TriggerEvent.spawn: 'spawn',
};

_Position _$PositionFromJson(Map<String, dynamic> json) => _Position(
  x: (json['x'] as num).toDouble(),
  y: (json['y'] as num).toDouble(),
);

Map<String, dynamic> _$PositionToJson(_Position instance) => <String, dynamic>{
  'x': instance.x,
  'y': instance.y,
};
