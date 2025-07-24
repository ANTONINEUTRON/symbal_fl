import 'package:json_annotation/json_annotation.dart';

part 'game_config.g.dart';

@JsonSerializable(explicitToJson: true)
class GameConfig {
  final Meta meta;
  final Player player;
  final List<GameComponent> components;
  final List<Projectile>? projectiles;
  final Tilemap? tilemap;
  final WinCondition? winCondition;
  final HUD? hud;
  final List<GameEvent>? events;

  GameConfig({
    required this.meta,
    required this.player,
    required this.components,
    this.projectiles,
    this.tilemap,
    this.winCondition,
    this.hud,
    this.events,
  });

  factory GameConfig.fromJson(Map<String, dynamic> json) => _$GameConfigFromJson(json);
  Map<String, dynamic> toJson() => _$GameConfigToJson(this);
}

@JsonSerializable()
class Meta {
  final String title;
  final String? author;
  final String orientation; // portrait or landscape
  final bool? gravity;
  final String? backgroundColor;
  final WorldSize? worldSize;
  final String? cameraFollow;

  Meta({
    required this.title,
    required this.orientation,
    this.author,
    this.gravity,
    this.backgroundColor,
    this.worldSize,
    this.cameraFollow,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class WorldSize {
  final double width;
  final double height;

  WorldSize({required this.width, required this.height});

  factory WorldSize.fromJson(Map<String, dynamic> json) => _$WorldSizeFromJson(json);
  Map<String, dynamic> toJson() => _$WorldSizeToJson(this);
}

@JsonSerializable()
class Player {
  final String id;
  final String sprite;
  final Position position;
  final Size size;
  final double? speed;
  final double? jumpForce;
  final double? health;
  final List<String>? controls;
  final bool? canShoot;
  final Projectile? projectile;

  Player({
    required this.id,
    required this.sprite,
    required this.position,
    required this.size,
    this.speed,
    this.jumpForce,
    this.health,
    this.controls,
    this.canShoot,
    this.projectile,
  });
 
  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}

@JsonSerializable()
class GameComponent {
  final String id;
  final String type; // platform, enemy, collectible, etc.
  final String sprite;
  final Position position;
  final Size size;
  final bool? solid;
  final String? behavior;
  final double? speed;
  final double? health;
  final OnHit? onHit;
  final OnCollect? onCollect;

  GameComponent({
    required this.id,
    required this.type,
    required this.sprite,
    required this.position,
    required this.size,
    this.solid,
    this.behavior,
    this.speed,
    this.health,
    this.onHit,
    this.onCollect,
  });

  factory GameComponent.fromJson(Map<String, dynamic> json) => _$GameComponentFromJson(json);
  Map<String, dynamic> toJson() => _$GameComponentToJson(this);
}

@JsonSerializable()
class Position {
  final double x;
  final double y;

  Position({required this.x, required this.y});

  factory Position.fromJson(Map<String, dynamic> json) => _$PositionFromJson(json);
  Map<String, dynamic> toJson() => _$PositionToJson(this);
}

@JsonSerializable()
class Size {
  final double width;
  final double height;

  Size({required this.width, required this.height});

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
  Map<String, dynamic> toJson() => _$SizeToJson(this);
}

@JsonSerializable()
class OnHit {
  final double? loseHealth;
  final IfDead? ifDead;

  OnHit({this.loseHealth, this.ifDead});

  factory OnHit.fromJson(Map<String, dynamic> json) => _$OnHitFromJson(json);
  Map<String, dynamic> toJson() => _$OnHitToJson(this);
}

@JsonSerializable()
class IfDead {
  final bool? remove;
  final double? increaseScore;

  IfDead({this.remove, this.increaseScore});

  factory IfDead.fromJson(Map<String, dynamic> json) => _$IfDeadFromJson(json);
  Map<String, dynamic> toJson() => _$IfDeadToJson(this);
}

@JsonSerializable()
class OnCollect {
  final double? increaseScore;
  final String? playSound;

  OnCollect({this.increaseScore, this.playSound});

  factory OnCollect.fromJson(Map<String, dynamic> json) => _$OnCollectFromJson(json);
  Map<String, dynamic> toJson() => _$OnCollectToJson(this);
}

@JsonSerializable()
class Projectile {
  final String? id;
  final String? from;
  final String sprite;
  final double speed;
  final String direction; // facing, up, down, etc.
  final OnProjectileHit? onHit;

  Projectile({
    this.id,
    this.from,
    required this.sprite,
    required this.speed,
    required this.direction,
    this.onHit,
  });

  factory Projectile.fromJson(Map<String, dynamic> json) => _$ProjectileFromJson(json);
  Map<String, dynamic> toJson() => _$ProjectileToJson(this);
}

@JsonSerializable()
class OnProjectileHit {
  final String? target;
  final double? loseHealth;

  OnProjectileHit({this.target, this.loseHealth});

  factory OnProjectileHit.fromJson(Map<String, dynamic> json) => _$OnProjectileHitFromJson(json);
  Map<String, dynamic> toJson() => _$OnProjectileHitToJson(this);
}

@JsonSerializable()
class Tilemap {
  final String tileset;
  final Size tileSize;
  final List<List<int>> map;

  Tilemap({required this.tileset, required this.tileSize, required this.map});

  factory Tilemap.fromJson(Map<String, dynamic> json) => _$TilemapFromJson(json);
  Map<String, dynamic> toJson() => _$TilemapToJson(this);
}

@JsonSerializable()
class WinCondition {
  final String? type;

  WinCondition({this.type});

  factory WinCondition.fromJson(Map<String, dynamic> json) => _$WinConditionFromJson(json);
  Map<String, dynamic> toJson() => _$WinConditionToJson(this);
}

@JsonSerializable()
class HUD {
  final bool? score;
  final bool? healthBar;
  final bool? timer;

  HUD({this.score, this.healthBar, this.timer});

  factory HUD.fromJson(Map<String, dynamic> json) => _$HUDFromJson(json);
  Map<String, dynamic> toJson() => _$HUDToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameEvent {
  final String trigger; // timer, onReach, etc.
  final double? afterSeconds;
  final EventAction action;

  GameEvent({required this.trigger, this.afterSeconds, required this.action});

  factory GameEvent.fromJson(Map<String, dynamic> json) => _$GameEventFromJson(json);
  Map<String, dynamic> toJson() => _$GameEventToJson(this);
}

@JsonSerializable()
class EventAction {
  final GameComponent? spawn;
  final double? increaseScore;
  final DialogTrigger? triggerDialog;

  EventAction({this.spawn, this.increaseScore, this.triggerDialog});

  factory EventAction.fromJson(Map<String, dynamic> json) => _$EventActionFromJson(json);
  Map<String, dynamic> toJson() => _$EventActionToJson(this);
}

@JsonSerializable()
class DialogTrigger {
  final String? text;
  final String? character;

  DialogTrigger({this.text, this.character});

  factory DialogTrigger.fromJson(Map<String, dynamic> json) => _$DialogTriggerFromJson(json);
  Map<String, dynamic> toJson() => _$DialogTriggerToJson(this);
}

