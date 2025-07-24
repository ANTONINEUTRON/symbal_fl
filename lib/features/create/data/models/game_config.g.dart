// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameConfig _$GameConfigFromJson(Map<String, dynamic> json) => GameConfig(
  meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
  player: Player.fromJson(json['player'] as Map<String, dynamic>),
  components: (json['components'] as List<dynamic>)
      .map((e) => GameComponent.fromJson(e as Map<String, dynamic>))
      .toList(),
  projectiles: (json['projectiles'] as List<dynamic>?)
      ?.map((e) => Projectile.fromJson(e as Map<String, dynamic>))
      .toList(),
  tilemap: json['tilemap'] == null
      ? null
      : Tilemap.fromJson(json['tilemap'] as Map<String, dynamic>),
  winCondition: json['winCondition'] == null
      ? null
      : WinCondition.fromJson(json['winCondition'] as Map<String, dynamic>),
  hud: json['hud'] == null
      ? null
      : HUD.fromJson(json['hud'] as Map<String, dynamic>),
  events: (json['events'] as List<dynamic>?)
      ?.map((e) => GameEvent.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GameConfigToJson(GameConfig instance) =>
    <String, dynamic>{
      'meta': instance.meta.toJson(),
      'player': instance.player.toJson(),
      'components': instance.components.map((e) => e.toJson()).toList(),
      'projectiles': instance.projectiles?.map((e) => e.toJson()).toList(),
      'tilemap': instance.tilemap?.toJson(),
      'winCondition': instance.winCondition?.toJson(),
      'hud': instance.hud?.toJson(),
      'events': instance.events?.map((e) => e.toJson()).toList(),
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
  title: json['title'] as String,
  orientation: json['orientation'] as String,
  author: json['author'] as String?,
  gravity: json['gravity'] as bool?,
  backgroundColor: json['backgroundColor'] as String?,
  worldSize: json['worldSize'] == null
      ? null
      : WorldSize.fromJson(json['worldSize'] as Map<String, dynamic>),
  cameraFollow: json['cameraFollow'] as String?,
);

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
  'title': instance.title,
  'author': instance.author,
  'orientation': instance.orientation,
  'gravity': instance.gravity,
  'backgroundColor': instance.backgroundColor,
  'worldSize': instance.worldSize,
  'cameraFollow': instance.cameraFollow,
};

WorldSize _$WorldSizeFromJson(Map<String, dynamic> json) => WorldSize(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
);

Map<String, dynamic> _$WorldSizeToJson(WorldSize instance) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
};

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
  id: json['id'] as String,
  sprite: json['sprite'] as String,
  position: Position.fromJson(json['position'] as Map<String, dynamic>),
  size: Size.fromJson(json['size'] as Map<String, dynamic>),
  speed: (json['speed'] as num?)?.toDouble(),
  jumpForce: (json['jumpForce'] as num?)?.toDouble(),
  health: (json['health'] as num?)?.toDouble(),
  controls: (json['controls'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  canShoot: json['canShoot'] as bool?,
  projectile: json['projectile'] == null
      ? null
      : Projectile.fromJson(json['projectile'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
  'id': instance.id,
  'sprite': instance.sprite,
  'position': instance.position,
  'size': instance.size,
  'speed': instance.speed,
  'jumpForce': instance.jumpForce,
  'health': instance.health,
  'controls': instance.controls,
  'canShoot': instance.canShoot,
  'projectile': instance.projectile,
};

GameComponent _$GameComponentFromJson(Map<String, dynamic> json) =>
    GameComponent(
      id: json['id'] as String,
      type: json['type'] as String,
      sprite: json['sprite'] as String,
      position: Position.fromJson(json['position'] as Map<String, dynamic>),
      size: Size.fromJson(json['size'] as Map<String, dynamic>),
      solid: json['solid'] as bool?,
      behavior: json['behavior'] as String?,
      speed: (json['speed'] as num?)?.toDouble(),
      health: (json['health'] as num?)?.toDouble(),
      onHit: json['onHit'] == null
          ? null
          : OnHit.fromJson(json['onHit'] as Map<String, dynamic>),
      onCollect: json['onCollect'] == null
          ? null
          : OnCollect.fromJson(json['onCollect'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameComponentToJson(GameComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'sprite': instance.sprite,
      'position': instance.position,
      'size': instance.size,
      'solid': instance.solid,
      'behavior': instance.behavior,
      'speed': instance.speed,
      'health': instance.health,
      'onHit': instance.onHit,
      'onCollect': instance.onCollect,
    };

Position _$PositionFromJson(Map<String, dynamic> json) => Position(
  x: (json['x'] as num).toDouble(),
  y: (json['y'] as num).toDouble(),
);

Map<String, dynamic> _$PositionToJson(Position instance) => <String, dynamic>{
  'x': instance.x,
  'y': instance.y,
};

Size _$SizeFromJson(Map<String, dynamic> json) => Size(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
);

Map<String, dynamic> _$SizeToJson(Size instance) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
};

OnHit _$OnHitFromJson(Map<String, dynamic> json) => OnHit(
  loseHealth: (json['loseHealth'] as num?)?.toDouble(),
  ifDead: json['ifDead'] == null
      ? null
      : IfDead.fromJson(json['ifDead'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OnHitToJson(OnHit instance) => <String, dynamic>{
  'loseHealth': instance.loseHealth,
  'ifDead': instance.ifDead,
};

IfDead _$IfDeadFromJson(Map<String, dynamic> json) => IfDead(
  remove: json['remove'] as bool?,
  increaseScore: (json['increaseScore'] as num?)?.toDouble(),
);

Map<String, dynamic> _$IfDeadToJson(IfDead instance) => <String, dynamic>{
  'remove': instance.remove,
  'increaseScore': instance.increaseScore,
};

OnCollect _$OnCollectFromJson(Map<String, dynamic> json) => OnCollect(
  increaseScore: (json['increaseScore'] as num?)?.toDouble(),
  playSound: json['playSound'] as String?,
);

Map<String, dynamic> _$OnCollectToJson(OnCollect instance) => <String, dynamic>{
  'increaseScore': instance.increaseScore,
  'playSound': instance.playSound,
};

Projectile _$ProjectileFromJson(Map<String, dynamic> json) => Projectile(
  id: json['id'] as String?,
  from: json['from'] as String?,
  sprite: json['sprite'] as String,
  speed: (json['speed'] as num).toDouble(),
  direction: json['direction'] as String,
  onHit: json['onHit'] == null
      ? null
      : OnProjectileHit.fromJson(json['onHit'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProjectileToJson(Projectile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'sprite': instance.sprite,
      'speed': instance.speed,
      'direction': instance.direction,
      'onHit': instance.onHit,
    };

OnProjectileHit _$OnProjectileHitFromJson(Map<String, dynamic> json) =>
    OnProjectileHit(
      target: json['target'] as String?,
      loseHealth: (json['loseHealth'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OnProjectileHitToJson(OnProjectileHit instance) =>
    <String, dynamic>{
      'target': instance.target,
      'loseHealth': instance.loseHealth,
    };

Tilemap _$TilemapFromJson(Map<String, dynamic> json) => Tilemap(
  tileset: json['tileset'] as String,
  tileSize: Size.fromJson(json['tileSize'] as Map<String, dynamic>),
  map: (json['map'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => (e as num).toInt()).toList())
      .toList(),
);

Map<String, dynamic> _$TilemapToJson(Tilemap instance) => <String, dynamic>{
  'tileset': instance.tileset,
  'tileSize': instance.tileSize,
  'map': instance.map,
};

WinCondition _$WinConditionFromJson(Map<String, dynamic> json) =>
    WinCondition(type: json['type'] as String?);

Map<String, dynamic> _$WinConditionToJson(WinCondition instance) =>
    <String, dynamic>{'type': instance.type};

HUD _$HUDFromJson(Map<String, dynamic> json) => HUD(
  score: json['score'] as bool?,
  healthBar: json['healthBar'] as bool?,
  timer: json['timer'] as bool?,
);

Map<String, dynamic> _$HUDToJson(HUD instance) => <String, dynamic>{
  'score': instance.score,
  'healthBar': instance.healthBar,
  'timer': instance.timer,
};

GameEvent _$GameEventFromJson(Map<String, dynamic> json) => GameEvent(
  trigger: json['trigger'] as String,
  afterSeconds: (json['afterSeconds'] as num?)?.toDouble(),
  action: EventAction.fromJson(json['action'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GameEventToJson(GameEvent instance) => <String, dynamic>{
  'trigger': instance.trigger,
  'afterSeconds': instance.afterSeconds,
  'action': instance.action.toJson(),
};

EventAction _$EventActionFromJson(Map<String, dynamic> json) => EventAction(
  spawn: json['spawn'] == null
      ? null
      : GameComponent.fromJson(json['spawn'] as Map<String, dynamic>),
  increaseScore: (json['increaseScore'] as num?)?.toDouble(),
  triggerDialog: json['triggerDialog'] == null
      ? null
      : DialogTrigger.fromJson(json['triggerDialog'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EventActionToJson(EventAction instance) =>
    <String, dynamic>{
      'spawn': instance.spawn,
      'increaseScore': instance.increaseScore,
      'triggerDialog': instance.triggerDialog,
    };

DialogTrigger _$DialogTriggerFromJson(Map<String, dynamic> json) =>
    DialogTrigger(
      text: json['text'] as String?,
      character: json['character'] as String?,
    );

Map<String, dynamic> _$DialogTriggerToJson(DialogTrigger instance) =>
    <String, dynamic>{'text': instance.text, 'character': instance.character};
