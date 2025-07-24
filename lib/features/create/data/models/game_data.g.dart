// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data.dart';

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
