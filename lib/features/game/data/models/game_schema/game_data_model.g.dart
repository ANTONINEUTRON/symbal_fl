// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameData _$GameDataFromJson(Map<String, dynamic> json) => _GameData(
  metadata: GameMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  world: GameWorld.fromJson(json['world'] as Map<String, dynamic>),
  entities: (json['entities'] as List<dynamic>)
      .map((e) => GameEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  gameRules: json['gameRules'] == null
      ? null
      : GameRules.fromJson(json['gameRules'] as Map<String, dynamic>),
  ui: json['ui'] == null
      ? null
      : GameUI.fromJson(json['ui'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GameDataToJson(_GameData instance) => <String, dynamic>{
  'metadata': instance.metadata,
  'world': instance.world,
  'entities': instance.entities,
  'gameRules': instance.gameRules,
  'ui': instance.ui,
};

_GameMetadata _$GameMetadataFromJson(Map<String, dynamic> json) =>
    _GameMetadata(
      title: json['title'] as String,
      description: json['description'] as String?,
      version: json['version'] as String? ?? '1.0',
    );

Map<String, dynamic> _$GameMetadataToJson(_GameMetadata instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'version': instance.version,
    };

_GameWorld _$GameWorldFromJson(Map<String, dynamic> json) => _GameWorld(
  orientation:
      $enumDecodeNullable(_$GameOrientationEnumMap, json['orientation']) ??
      GameOrientation.landscape,
  bounds: json['bounds'] == null
      ? null
      : WorldBounds.fromJson(json['bounds'] as Map<String, dynamic>),
  gravity: json['gravity'] == null
      ? null
      : WorldGravity.fromJson(json['gravity'] as Map<String, dynamic>),
  background: json['background'] == null
      ? null
      : WorldBackground.fromJson(json['background'] as Map<String, dynamic>),
  camera: json['camera'] == null
      ? null
      : WorldCamera.fromJson(json['camera'] as Map<String, dynamic>),
  audio: json['audio'] as String?,
);

Map<String, dynamic> _$GameWorldToJson(_GameWorld instance) =>
    <String, dynamic>{
      'orientation': _$GameOrientationEnumMap[instance.orientation]!,
      'bounds': instance.bounds,
      'gravity': instance.gravity,
      'background': instance.background,
      'camera': instance.camera,
      'audio': instance.audio,
    };

const _$GameOrientationEnumMap = {
  GameOrientation.landscape: 'landscape',
  GameOrientation.portrait: 'portrait',
  GameOrientation.both: 'both',
};

_WorldBounds _$WorldBoundsFromJson(Map<String, dynamic> json) => _WorldBounds(
  width: (json['width'] as num?)?.toDouble() ?? 1200.0,
  height: (json['height'] as num?)?.toDouble() ?? 800.0,
  autoScale: json['autoScale'] as bool? ?? true,
);

Map<String, dynamic> _$WorldBoundsToJson(_WorldBounds instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'autoScale': instance.autoScale,
    };

_WorldGravity _$WorldGravityFromJson(Map<String, dynamic> json) =>
    _WorldGravity(
      x: (json['x'] as num?)?.toDouble() ?? 0.0,
      y: (json['y'] as num?)?.toDouble() ?? 980.0,
    );

Map<String, dynamic> _$WorldGravityToJson(_WorldGravity instance) =>
    <String, dynamic>{'x': instance.x, 'y': instance.y};

_WorldBackground _$WorldBackgroundFromJson(Map<String, dynamic> json) =>
    _WorldBackground(
      color: json['color'] as String?,
      asset: json['asset'] as String?,
      parallax: json['parallax'] as bool? ?? false,
    );

Map<String, dynamic> _$WorldBackgroundToJson(_WorldBackground instance) =>
    <String, dynamic>{
      'color': instance.color,
      'asset': instance.asset,
      'parallax': instance.parallax,
    };

_WorldCamera _$WorldCameraFromJson(Map<String, dynamic> json) => _WorldCamera(
  followPlayer: json['followPlayer'] as bool? ?? true,
  bounds: json['bounds'] == null
      ? null
      : CameraBounds.fromJson(json['bounds'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WorldCameraToJson(_WorldCamera instance) =>
    <String, dynamic>{
      'followPlayer': instance.followPlayer,
      'bounds': instance.bounds,
    };

_CameraBounds _$CameraBoundsFromJson(Map<String, dynamic> json) =>
    _CameraBounds(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
    );

Map<String, dynamic> _$CameraBoundsToJson(_CameraBounds instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'width': instance.width,
      'height': instance.height,
    };

_GameEntity _$GameEntityFromJson(Map<String, dynamic> json) => _GameEntity(
  id: json['id'] as String,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  components: EntityComponents.fromJson(
    json['components'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GameEntityToJson(_GameEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tags': instance.tags,
      'components': instance.components,
    };

_GameRules _$GameRulesFromJson(Map<String, dynamic> json) => _GameRules(
  winConditions:
      (json['winConditions'] as List<dynamic>?)
          ?.map((e) => WinCondition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  loseConditions:
      (json['loseConditions'] as List<dynamic>?)
          ?.map((e) => LoseCondition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  playerLives: (json['playerLives'] as num?)?.toInt() ?? 3,
  timeLimit: (json['timeLimit'] as num?)?.toDouble(),
);

Map<String, dynamic> _$GameRulesToJson(_GameRules instance) =>
    <String, dynamic>{
      'winConditions': instance.winConditions,
      'loseConditions': instance.loseConditions,
      'playerLives': instance.playerLives,
      'timeLimit': instance.timeLimit,
    };

_WinCondition _$WinConditionFromJson(Map<String, dynamic> json) =>
    _WinCondition(
      type: $enumDecode(_$WinConditionTypeEnumMap, json['type']),
      entityId: json['entityId'] as String?,
      target: json['target'] as String?,
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WinConditionToJson(_WinCondition instance) =>
    <String, dynamic>{
      'type': _$WinConditionTypeEnumMap[instance.type]!,
      'entityId': instance.entityId,
      'target': instance.target,
      'value': instance.value,
    };

const _$WinConditionTypeEnumMap = {
  WinConditionType.reachEntity: 'reachEntity',
  WinConditionType.collectAll: 'collectAll',
  WinConditionType.surviveTime: 'surviveTime',
  WinConditionType.score: 'score',
};

_LoseCondition _$LoseConditionFromJson(Map<String, dynamic> json) =>
    _LoseCondition(
      type: $enumDecode(_$LoseConditionTypeEnumMap, json['type']),
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LoseConditionToJson(_LoseCondition instance) =>
    <String, dynamic>{
      'type': _$LoseConditionTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$LoseConditionTypeEnumMap = {
  LoseConditionType.playerDeath: 'playerDeath',
  LoseConditionType.timeOut: 'timeOut',
  LoseConditionType.fallOffWorld: 'fallOffWorld',
};

_GameUI _$GameUIFromJson(Map<String, dynamic> json) => _GameUI(
  showScore: json['showScore'] as bool? ?? true,
  showHealth: json['showHealth'] as bool? ?? true,
  showTimer: json['showTimer'] as bool? ?? false,
  controls: json['controls'] == null
      ? null
      : GameControls.fromJson(json['controls'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GameUIToJson(_GameUI instance) => <String, dynamic>{
  'showScore': instance.showScore,
  'showHealth': instance.showHealth,
  'showTimer': instance.showTimer,
  'controls': instance.controls,
};

_GameControls _$GameControlsFromJson(Map<String, dynamic> json) =>
    _GameControls(
      touchControls: json['touchControls'] as bool? ?? true,
      keyboardControls: json['keyboardControls'] as bool? ?? true,
    );

Map<String, dynamic> _$GameControlsToJson(_GameControls instance) =>
    <String, dynamic>{
      'touchControls': instance.touchControls,
      'keyboardControls': instance.keyboardControls,
    };

_EntityComponents _$EntityComponentsFromJson(
  Map<String, dynamic> json,
) => _EntityComponents(
  transform: json['transform'] == null
      ? null
      : TransformComponent.fromJson(json['transform'] as Map<String, dynamic>),
  sprite: json['sprite'] == null
      ? null
      : SSpriteComponent.fromJson(json['sprite'] as Map<String, dynamic>),
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
