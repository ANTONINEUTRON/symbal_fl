// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_components.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EntityComponents {

 TransformComponent? get transform; SpriteComponent? get sprite; AnimationComponent? get animation; PhysicsComponent? get physics; CollisionComponent? get collision; MovementComponent? get movement; HealthComponent? get health; AIComponent? get ai; CollectibleComponent? get collectible; DamageComponent? get damage; PlatformComponent? get platform; TriggerComponent? get trigger;
/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityComponentsCopyWith<EntityComponents> get copyWith => _$EntityComponentsCopyWithImpl<EntityComponents>(this as EntityComponents, _$identity);

  /// Serializes this EntityComponents to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityComponents&&(identical(other.transform, transform) || other.transform == transform)&&(identical(other.sprite, sprite) || other.sprite == sprite)&&(identical(other.animation, animation) || other.animation == animation)&&(identical(other.physics, physics) || other.physics == physics)&&(identical(other.collision, collision) || other.collision == collision)&&(identical(other.movement, movement) || other.movement == movement)&&(identical(other.health, health) || other.health == health)&&(identical(other.ai, ai) || other.ai == ai)&&(identical(other.collectible, collectible) || other.collectible == collectible)&&(identical(other.damage, damage) || other.damage == damage)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.trigger, trigger) || other.trigger == trigger));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transform,sprite,animation,physics,collision,movement,health,ai,collectible,damage,platform,trigger);

@override
String toString() {
  return 'EntityComponents(transform: $transform, sprite: $sprite, animation: $animation, physics: $physics, collision: $collision, movement: $movement, health: $health, ai: $ai, collectible: $collectible, damage: $damage, platform: $platform, trigger: $trigger)';
}


}

/// @nodoc
abstract mixin class $EntityComponentsCopyWith<$Res>  {
  factory $EntityComponentsCopyWith(EntityComponents value, $Res Function(EntityComponents) _then) = _$EntityComponentsCopyWithImpl;
@useResult
$Res call({
 TransformComponent? transform, SpriteComponent? sprite, AnimationComponent? animation, PhysicsComponent? physics, CollisionComponent? collision, MovementComponent? movement, HealthComponent? health, AIComponent? ai, CollectibleComponent? collectible, DamageComponent? damage, PlatformComponent? platform, TriggerComponent? trigger
});


$TransformComponentCopyWith<$Res>? get transform;$SpriteComponentCopyWith<$Res>? get sprite;$AnimationComponentCopyWith<$Res>? get animation;$PhysicsComponentCopyWith<$Res>? get physics;$CollisionComponentCopyWith<$Res>? get collision;$MovementComponentCopyWith<$Res>? get movement;$HealthComponentCopyWith<$Res>? get health;$AIComponentCopyWith<$Res>? get ai;$CollectibleComponentCopyWith<$Res>? get collectible;$DamageComponentCopyWith<$Res>? get damage;$PlatformComponentCopyWith<$Res>? get platform;$TriggerComponentCopyWith<$Res>? get trigger;

}
/// @nodoc
class _$EntityComponentsCopyWithImpl<$Res>
    implements $EntityComponentsCopyWith<$Res> {
  _$EntityComponentsCopyWithImpl(this._self, this._then);

  final EntityComponents _self;
  final $Res Function(EntityComponents) _then;

/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transform = freezed,Object? sprite = freezed,Object? animation = freezed,Object? physics = freezed,Object? collision = freezed,Object? movement = freezed,Object? health = freezed,Object? ai = freezed,Object? collectible = freezed,Object? damage = freezed,Object? platform = freezed,Object? trigger = freezed,}) {
  return _then(_self.copyWith(
transform: freezed == transform ? _self.transform : transform // ignore: cast_nullable_to_non_nullable
as TransformComponent?,sprite: freezed == sprite ? _self.sprite : sprite // ignore: cast_nullable_to_non_nullable
as SpriteComponent?,animation: freezed == animation ? _self.animation : animation // ignore: cast_nullable_to_non_nullable
as AnimationComponent?,physics: freezed == physics ? _self.physics : physics // ignore: cast_nullable_to_non_nullable
as PhysicsComponent?,collision: freezed == collision ? _self.collision : collision // ignore: cast_nullable_to_non_nullable
as CollisionComponent?,movement: freezed == movement ? _self.movement : movement // ignore: cast_nullable_to_non_nullable
as MovementComponent?,health: freezed == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as HealthComponent?,ai: freezed == ai ? _self.ai : ai // ignore: cast_nullable_to_non_nullable
as AIComponent?,collectible: freezed == collectible ? _self.collectible : collectible // ignore: cast_nullable_to_non_nullable
as CollectibleComponent?,damage: freezed == damage ? _self.damage : damage // ignore: cast_nullable_to_non_nullable
as DamageComponent?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as PlatformComponent?,trigger: freezed == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as TriggerComponent?,
  ));
}
/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransformComponentCopyWith<$Res>? get transform {
    if (_self.transform == null) {
    return null;
  }

  return $TransformComponentCopyWith<$Res>(_self.transform!, (value) {
    return _then(_self.copyWith(transform: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpriteComponentCopyWith<$Res>? get sprite {
    if (_self.sprite == null) {
    return null;
  }

  return $SpriteComponentCopyWith<$Res>(_self.sprite!, (value) {
    return _then(_self.copyWith(sprite: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnimationComponentCopyWith<$Res>? get animation {
    if (_self.animation == null) {
    return null;
  }

  return $AnimationComponentCopyWith<$Res>(_self.animation!, (value) {
    return _then(_self.copyWith(animation: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhysicsComponentCopyWith<$Res>? get physics {
    if (_self.physics == null) {
    return null;
  }

  return $PhysicsComponentCopyWith<$Res>(_self.physics!, (value) {
    return _then(_self.copyWith(physics: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollisionComponentCopyWith<$Res>? get collision {
    if (_self.collision == null) {
    return null;
  }

  return $CollisionComponentCopyWith<$Res>(_self.collision!, (value) {
    return _then(_self.copyWith(collision: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovementComponentCopyWith<$Res>? get movement {
    if (_self.movement == null) {
    return null;
  }

  return $MovementComponentCopyWith<$Res>(_self.movement!, (value) {
    return _then(_self.copyWith(movement: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthComponentCopyWith<$Res>? get health {
    if (_self.health == null) {
    return null;
  }

  return $HealthComponentCopyWith<$Res>(_self.health!, (value) {
    return _then(_self.copyWith(health: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AIComponentCopyWith<$Res>? get ai {
    if (_self.ai == null) {
    return null;
  }

  return $AIComponentCopyWith<$Res>(_self.ai!, (value) {
    return _then(_self.copyWith(ai: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectibleComponentCopyWith<$Res>? get collectible {
    if (_self.collectible == null) {
    return null;
  }

  return $CollectibleComponentCopyWith<$Res>(_self.collectible!, (value) {
    return _then(_self.copyWith(collectible: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DamageComponentCopyWith<$Res>? get damage {
    if (_self.damage == null) {
    return null;
  }

  return $DamageComponentCopyWith<$Res>(_self.damage!, (value) {
    return _then(_self.copyWith(damage: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlatformComponentCopyWith<$Res>? get platform {
    if (_self.platform == null) {
    return null;
  }

  return $PlatformComponentCopyWith<$Res>(_self.platform!, (value) {
    return _then(_self.copyWith(platform: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TriggerComponentCopyWith<$Res>? get trigger {
    if (_self.trigger == null) {
    return null;
  }

  return $TriggerComponentCopyWith<$Res>(_self.trigger!, (value) {
    return _then(_self.copyWith(trigger: value));
  });
}
}


/// Adds pattern-matching-related methods to [EntityComponents].
extension EntityComponentsPatterns on EntityComponents {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntityComponents value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntityComponents() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntityComponents value)  $default,){
final _that = this;
switch (_that) {
case _EntityComponents():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntityComponents value)?  $default,){
final _that = this;
switch (_that) {
case _EntityComponents() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransformComponent? transform,  SpriteComponent? sprite,  AnimationComponent? animation,  PhysicsComponent? physics,  CollisionComponent? collision,  MovementComponent? movement,  HealthComponent? health,  AIComponent? ai,  CollectibleComponent? collectible,  DamageComponent? damage,  PlatformComponent? platform,  TriggerComponent? trigger)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntityComponents() when $default != null:
return $default(_that.transform,_that.sprite,_that.animation,_that.physics,_that.collision,_that.movement,_that.health,_that.ai,_that.collectible,_that.damage,_that.platform,_that.trigger);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransformComponent? transform,  SpriteComponent? sprite,  AnimationComponent? animation,  PhysicsComponent? physics,  CollisionComponent? collision,  MovementComponent? movement,  HealthComponent? health,  AIComponent? ai,  CollectibleComponent? collectible,  DamageComponent? damage,  PlatformComponent? platform,  TriggerComponent? trigger)  $default,) {final _that = this;
switch (_that) {
case _EntityComponents():
return $default(_that.transform,_that.sprite,_that.animation,_that.physics,_that.collision,_that.movement,_that.health,_that.ai,_that.collectible,_that.damage,_that.platform,_that.trigger);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransformComponent? transform,  SpriteComponent? sprite,  AnimationComponent? animation,  PhysicsComponent? physics,  CollisionComponent? collision,  MovementComponent? movement,  HealthComponent? health,  AIComponent? ai,  CollectibleComponent? collectible,  DamageComponent? damage,  PlatformComponent? platform,  TriggerComponent? trigger)?  $default,) {final _that = this;
switch (_that) {
case _EntityComponents() when $default != null:
return $default(_that.transform,_that.sprite,_that.animation,_that.physics,_that.collision,_that.movement,_that.health,_that.ai,_that.collectible,_that.damage,_that.platform,_that.trigger);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EntityComponents implements EntityComponents {
  const _EntityComponents({this.transform, this.sprite, this.animation, this.physics, this.collision, this.movement, this.health, this.ai, this.collectible, this.damage, this.platform, this.trigger});
  factory _EntityComponents.fromJson(Map<String, dynamic> json) => _$EntityComponentsFromJson(json);

@override final  TransformComponent? transform;
@override final  SpriteComponent? sprite;
@override final  AnimationComponent? animation;
@override final  PhysicsComponent? physics;
@override final  CollisionComponent? collision;
@override final  MovementComponent? movement;
@override final  HealthComponent? health;
@override final  AIComponent? ai;
@override final  CollectibleComponent? collectible;
@override final  DamageComponent? damage;
@override final  PlatformComponent? platform;
@override final  TriggerComponent? trigger;

/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityComponentsCopyWith<_EntityComponents> get copyWith => __$EntityComponentsCopyWithImpl<_EntityComponents>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntityComponentsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityComponents&&(identical(other.transform, transform) || other.transform == transform)&&(identical(other.sprite, sprite) || other.sprite == sprite)&&(identical(other.animation, animation) || other.animation == animation)&&(identical(other.physics, physics) || other.physics == physics)&&(identical(other.collision, collision) || other.collision == collision)&&(identical(other.movement, movement) || other.movement == movement)&&(identical(other.health, health) || other.health == health)&&(identical(other.ai, ai) || other.ai == ai)&&(identical(other.collectible, collectible) || other.collectible == collectible)&&(identical(other.damage, damage) || other.damage == damage)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.trigger, trigger) || other.trigger == trigger));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transform,sprite,animation,physics,collision,movement,health,ai,collectible,damage,platform,trigger);

@override
String toString() {
  return 'EntityComponents(transform: $transform, sprite: $sprite, animation: $animation, physics: $physics, collision: $collision, movement: $movement, health: $health, ai: $ai, collectible: $collectible, damage: $damage, platform: $platform, trigger: $trigger)';
}


}

/// @nodoc
abstract mixin class _$EntityComponentsCopyWith<$Res> implements $EntityComponentsCopyWith<$Res> {
  factory _$EntityComponentsCopyWith(_EntityComponents value, $Res Function(_EntityComponents) _then) = __$EntityComponentsCopyWithImpl;
@override @useResult
$Res call({
 TransformComponent? transform, SpriteComponent? sprite, AnimationComponent? animation, PhysicsComponent? physics, CollisionComponent? collision, MovementComponent? movement, HealthComponent? health, AIComponent? ai, CollectibleComponent? collectible, DamageComponent? damage, PlatformComponent? platform, TriggerComponent? trigger
});


@override $TransformComponentCopyWith<$Res>? get transform;@override $SpriteComponentCopyWith<$Res>? get sprite;@override $AnimationComponentCopyWith<$Res>? get animation;@override $PhysicsComponentCopyWith<$Res>? get physics;@override $CollisionComponentCopyWith<$Res>? get collision;@override $MovementComponentCopyWith<$Res>? get movement;@override $HealthComponentCopyWith<$Res>? get health;@override $AIComponentCopyWith<$Res>? get ai;@override $CollectibleComponentCopyWith<$Res>? get collectible;@override $DamageComponentCopyWith<$Res>? get damage;@override $PlatformComponentCopyWith<$Res>? get platform;@override $TriggerComponentCopyWith<$Res>? get trigger;

}
/// @nodoc
class __$EntityComponentsCopyWithImpl<$Res>
    implements _$EntityComponentsCopyWith<$Res> {
  __$EntityComponentsCopyWithImpl(this._self, this._then);

  final _EntityComponents _self;
  final $Res Function(_EntityComponents) _then;

/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transform = freezed,Object? sprite = freezed,Object? animation = freezed,Object? physics = freezed,Object? collision = freezed,Object? movement = freezed,Object? health = freezed,Object? ai = freezed,Object? collectible = freezed,Object? damage = freezed,Object? platform = freezed,Object? trigger = freezed,}) {
  return _then(_EntityComponents(
transform: freezed == transform ? _self.transform : transform // ignore: cast_nullable_to_non_nullable
as TransformComponent?,sprite: freezed == sprite ? _self.sprite : sprite // ignore: cast_nullable_to_non_nullable
as SpriteComponent?,animation: freezed == animation ? _self.animation : animation // ignore: cast_nullable_to_non_nullable
as AnimationComponent?,physics: freezed == physics ? _self.physics : physics // ignore: cast_nullable_to_non_nullable
as PhysicsComponent?,collision: freezed == collision ? _self.collision : collision // ignore: cast_nullable_to_non_nullable
as CollisionComponent?,movement: freezed == movement ? _self.movement : movement // ignore: cast_nullable_to_non_nullable
as MovementComponent?,health: freezed == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as HealthComponent?,ai: freezed == ai ? _self.ai : ai // ignore: cast_nullable_to_non_nullable
as AIComponent?,collectible: freezed == collectible ? _self.collectible : collectible // ignore: cast_nullable_to_non_nullable
as CollectibleComponent?,damage: freezed == damage ? _self.damage : damage // ignore: cast_nullable_to_non_nullable
as DamageComponent?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as PlatformComponent?,trigger: freezed == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as TriggerComponent?,
  ));
}

/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransformComponentCopyWith<$Res>? get transform {
    if (_self.transform == null) {
    return null;
  }

  return $TransformComponentCopyWith<$Res>(_self.transform!, (value) {
    return _then(_self.copyWith(transform: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpriteComponentCopyWith<$Res>? get sprite {
    if (_self.sprite == null) {
    return null;
  }

  return $SpriteComponentCopyWith<$Res>(_self.sprite!, (value) {
    return _then(_self.copyWith(sprite: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnimationComponentCopyWith<$Res>? get animation {
    if (_self.animation == null) {
    return null;
  }

  return $AnimationComponentCopyWith<$Res>(_self.animation!, (value) {
    return _then(_self.copyWith(animation: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhysicsComponentCopyWith<$Res>? get physics {
    if (_self.physics == null) {
    return null;
  }

  return $PhysicsComponentCopyWith<$Res>(_self.physics!, (value) {
    return _then(_self.copyWith(physics: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollisionComponentCopyWith<$Res>? get collision {
    if (_self.collision == null) {
    return null;
  }

  return $CollisionComponentCopyWith<$Res>(_self.collision!, (value) {
    return _then(_self.copyWith(collision: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovementComponentCopyWith<$Res>? get movement {
    if (_self.movement == null) {
    return null;
  }

  return $MovementComponentCopyWith<$Res>(_self.movement!, (value) {
    return _then(_self.copyWith(movement: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthComponentCopyWith<$Res>? get health {
    if (_self.health == null) {
    return null;
  }

  return $HealthComponentCopyWith<$Res>(_self.health!, (value) {
    return _then(_self.copyWith(health: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AIComponentCopyWith<$Res>? get ai {
    if (_self.ai == null) {
    return null;
  }

  return $AIComponentCopyWith<$Res>(_self.ai!, (value) {
    return _then(_self.copyWith(ai: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectibleComponentCopyWith<$Res>? get collectible {
    if (_self.collectible == null) {
    return null;
  }

  return $CollectibleComponentCopyWith<$Res>(_self.collectible!, (value) {
    return _then(_self.copyWith(collectible: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DamageComponentCopyWith<$Res>? get damage {
    if (_self.damage == null) {
    return null;
  }

  return $DamageComponentCopyWith<$Res>(_self.damage!, (value) {
    return _then(_self.copyWith(damage: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlatformComponentCopyWith<$Res>? get platform {
    if (_self.platform == null) {
    return null;
  }

  return $PlatformComponentCopyWith<$Res>(_self.platform!, (value) {
    return _then(_self.copyWith(platform: value));
  });
}/// Create a copy of EntityComponents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TriggerComponentCopyWith<$Res>? get trigger {
    if (_self.trigger == null) {
    return null;
  }

  return $TriggerComponentCopyWith<$Res>(_self.trigger!, (value) {
    return _then(_self.copyWith(trigger: value));
  });
}
}


/// @nodoc
mixin _$TransformComponent {

 double get x; double get y; double get rotation; double get scale;
/// Create a copy of TransformComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransformComponentCopyWith<TransformComponent> get copyWith => _$TransformComponentCopyWithImpl<TransformComponent>(this as TransformComponent, _$identity);

  /// Serializes this TransformComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransformComponent&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.rotation, rotation) || other.rotation == rotation)&&(identical(other.scale, scale) || other.scale == scale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,rotation,scale);

@override
String toString() {
  return 'TransformComponent(x: $x, y: $y, rotation: $rotation, scale: $scale)';
}


}

/// @nodoc
abstract mixin class $TransformComponentCopyWith<$Res>  {
  factory $TransformComponentCopyWith(TransformComponent value, $Res Function(TransformComponent) _then) = _$TransformComponentCopyWithImpl;
@useResult
$Res call({
 double x, double y, double rotation, double scale
});




}
/// @nodoc
class _$TransformComponentCopyWithImpl<$Res>
    implements $TransformComponentCopyWith<$Res> {
  _$TransformComponentCopyWithImpl(this._self, this._then);

  final TransformComponent _self;
  final $Res Function(TransformComponent) _then;

/// Create a copy of TransformComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,Object? rotation = null,Object? scale = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,rotation: null == rotation ? _self.rotation : rotation // ignore: cast_nullable_to_non_nullable
as double,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [TransformComponent].
extension TransformComponentPatterns on TransformComponent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransformComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransformComponent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransformComponent value)  $default,){
final _that = this;
switch (_that) {
case _TransformComponent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransformComponent value)?  $default,){
final _that = this;
switch (_that) {
case _TransformComponent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double x,  double y,  double rotation,  double scale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransformComponent() when $default != null:
return $default(_that.x,_that.y,_that.rotation,_that.scale);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double x,  double y,  double rotation,  double scale)  $default,) {final _that = this;
switch (_that) {
case _TransformComponent():
return $default(_that.x,_that.y,_that.rotation,_that.scale);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double x,  double y,  double rotation,  double scale)?  $default,) {final _that = this;
switch (_that) {
case _TransformComponent() when $default != null:
return $default(_that.x,_that.y,_that.rotation,_that.scale);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransformComponent implements TransformComponent {
  const _TransformComponent({required this.x, required this.y, this.rotation = 0.0, this.scale = 1.0});
  factory _TransformComponent.fromJson(Map<String, dynamic> json) => _$TransformComponentFromJson(json);

@override final  double x;
@override final  double y;
@override@JsonKey() final  double rotation;
@override@JsonKey() final  double scale;

/// Create a copy of TransformComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransformComponentCopyWith<_TransformComponent> get copyWith => __$TransformComponentCopyWithImpl<_TransformComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransformComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransformComponent&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.rotation, rotation) || other.rotation == rotation)&&(identical(other.scale, scale) || other.scale == scale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,rotation,scale);

@override
String toString() {
  return 'TransformComponent(x: $x, y: $y, rotation: $rotation, scale: $scale)';
}


}

/// @nodoc
abstract mixin class _$TransformComponentCopyWith<$Res> implements $TransformComponentCopyWith<$Res> {
  factory _$TransformComponentCopyWith(_TransformComponent value, $Res Function(_TransformComponent) _then) = __$TransformComponentCopyWithImpl;
@override @useResult
$Res call({
 double x, double y, double rotation, double scale
});




}
/// @nodoc
class __$TransformComponentCopyWithImpl<$Res>
    implements _$TransformComponentCopyWith<$Res> {
  __$TransformComponentCopyWithImpl(this._self, this._then);

  final _TransformComponent _self;
  final $Res Function(_TransformComponent) _then;

/// Create a copy of TransformComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,Object? rotation = null,Object? scale = null,}) {
  return _then(_TransformComponent(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,rotation: null == rotation ? _self.rotation : rotation // ignore: cast_nullable_to_non_nullable
as double,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$SpriteComponent {

 String get asset; double? get width; double? get height; bool get flipX; bool get flipY;
/// Create a copy of SpriteComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpriteComponentCopyWith<SpriteComponent> get copyWith => _$SpriteComponentCopyWithImpl<SpriteComponent>(this as SpriteComponent, _$identity);

  /// Serializes this SpriteComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpriteComponent&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.flipX, flipX) || other.flipX == flipX)&&(identical(other.flipY, flipY) || other.flipY == flipY));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,asset,width,height,flipX,flipY);

@override
String toString() {
  return 'SpriteComponent(asset: $asset, width: $width, height: $height, flipX: $flipX, flipY: $flipY)';
}


}

/// @nodoc
abstract mixin class $SpriteComponentCopyWith<$Res>  {
  factory $SpriteComponentCopyWith(SpriteComponent value, $Res Function(SpriteComponent) _then) = _$SpriteComponentCopyWithImpl;
@useResult
$Res call({
 String asset, double? width, double? height, bool flipX, bool flipY
});




}
/// @nodoc
class _$SpriteComponentCopyWithImpl<$Res>
    implements $SpriteComponentCopyWith<$Res> {
  _$SpriteComponentCopyWithImpl(this._self, this._then);

  final SpriteComponent _self;
  final $Res Function(SpriteComponent) _then;

/// Create a copy of SpriteComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? asset = null,Object? width = freezed,Object? height = freezed,Object? flipX = null,Object? flipY = null,}) {
  return _then(_self.copyWith(
asset: null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as String,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,flipX: null == flipX ? _self.flipX : flipX // ignore: cast_nullable_to_non_nullable
as bool,flipY: null == flipY ? _self.flipY : flipY // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SpriteComponent].
extension SpriteComponentPatterns on SpriteComponent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpriteComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpriteComponent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpriteComponent value)  $default,){
final _that = this;
switch (_that) {
case _SpriteComponent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpriteComponent value)?  $default,){
final _that = this;
switch (_that) {
case _SpriteComponent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String asset,  double? width,  double? height,  bool flipX,  bool flipY)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpriteComponent() when $default != null:
return $default(_that.asset,_that.width,_that.height,_that.flipX,_that.flipY);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String asset,  double? width,  double? height,  bool flipX,  bool flipY)  $default,) {final _that = this;
switch (_that) {
case _SpriteComponent():
return $default(_that.asset,_that.width,_that.height,_that.flipX,_that.flipY);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String asset,  double? width,  double? height,  bool flipX,  bool flipY)?  $default,) {final _that = this;
switch (_that) {
case _SpriteComponent() when $default != null:
return $default(_that.asset,_that.width,_that.height,_that.flipX,_that.flipY);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpriteComponent implements SpriteComponent {
  const _SpriteComponent({required this.asset, this.width, this.height, this.flipX = false, this.flipY = false});
  factory _SpriteComponent.fromJson(Map<String, dynamic> json) => _$SpriteComponentFromJson(json);

@override final  String asset;
@override final  double? width;
@override final  double? height;
@override@JsonKey() final  bool flipX;
@override@JsonKey() final  bool flipY;

/// Create a copy of SpriteComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpriteComponentCopyWith<_SpriteComponent> get copyWith => __$SpriteComponentCopyWithImpl<_SpriteComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpriteComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpriteComponent&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.flipX, flipX) || other.flipX == flipX)&&(identical(other.flipY, flipY) || other.flipY == flipY));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,asset,width,height,flipX,flipY);

@override
String toString() {
  return 'SpriteComponent(asset: $asset, width: $width, height: $height, flipX: $flipX, flipY: $flipY)';
}


}

/// @nodoc
abstract mixin class _$SpriteComponentCopyWith<$Res> implements $SpriteComponentCopyWith<$Res> {
  factory _$SpriteComponentCopyWith(_SpriteComponent value, $Res Function(_SpriteComponent) _then) = __$SpriteComponentCopyWithImpl;
@override @useResult
$Res call({
 String asset, double? width, double? height, bool flipX, bool flipY
});




}
/// @nodoc
class __$SpriteComponentCopyWithImpl<$Res>
    implements _$SpriteComponentCopyWith<$Res> {
  __$SpriteComponentCopyWithImpl(this._self, this._then);

  final _SpriteComponent _self;
  final $Res Function(_SpriteComponent) _then;

/// Create a copy of SpriteComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asset = null,Object? width = freezed,Object? height = freezed,Object? flipX = null,Object? flipY = null,}) {
  return _then(_SpriteComponent(
asset: null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as String,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,flipX: null == flipX ? _self.flipX : flipX // ignore: cast_nullable_to_non_nullable
as bool,flipY: null == flipY ? _self.flipY : flipY // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AnimationComponent {

 String get spriteSheet; int get frameCount; double get stepTime; bool get loop;
/// Create a copy of AnimationComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimationComponentCopyWith<AnimationComponent> get copyWith => _$AnimationComponentCopyWithImpl<AnimationComponent>(this as AnimationComponent, _$identity);

  /// Serializes this AnimationComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnimationComponent&&(identical(other.spriteSheet, spriteSheet) || other.spriteSheet == spriteSheet)&&(identical(other.frameCount, frameCount) || other.frameCount == frameCount)&&(identical(other.stepTime, stepTime) || other.stepTime == stepTime)&&(identical(other.loop, loop) || other.loop == loop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,spriteSheet,frameCount,stepTime,loop);

@override
String toString() {
  return 'AnimationComponent(spriteSheet: $spriteSheet, frameCount: $frameCount, stepTime: $stepTime, loop: $loop)';
}


}

/// @nodoc
abstract mixin class $AnimationComponentCopyWith<$Res>  {
  factory $AnimationComponentCopyWith(AnimationComponent value, $Res Function(AnimationComponent) _then) = _$AnimationComponentCopyWithImpl;
@useResult
$Res call({
 String spriteSheet, int frameCount, double stepTime, bool loop
});




}
/// @nodoc
class _$AnimationComponentCopyWithImpl<$Res>
    implements $AnimationComponentCopyWith<$Res> {
  _$AnimationComponentCopyWithImpl(this._self, this._then);

  final AnimationComponent _self;
  final $Res Function(AnimationComponent) _then;

/// Create a copy of AnimationComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spriteSheet = null,Object? frameCount = null,Object? stepTime = null,Object? loop = null,}) {
  return _then(_self.copyWith(
spriteSheet: null == spriteSheet ? _self.spriteSheet : spriteSheet // ignore: cast_nullable_to_non_nullable
as String,frameCount: null == frameCount ? _self.frameCount : frameCount // ignore: cast_nullable_to_non_nullable
as int,stepTime: null == stepTime ? _self.stepTime : stepTime // ignore: cast_nullable_to_non_nullable
as double,loop: null == loop ? _self.loop : loop // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AnimationComponent].
extension AnimationComponentPatterns on AnimationComponent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnimationComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnimationComponent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnimationComponent value)  $default,){
final _that = this;
switch (_that) {
case _AnimationComponent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnimationComponent value)?  $default,){
final _that = this;
switch (_that) {
case _AnimationComponent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String spriteSheet,  int frameCount,  double stepTime,  bool loop)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnimationComponent() when $default != null:
return $default(_that.spriteSheet,_that.frameCount,_that.stepTime,_that.loop);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String spriteSheet,  int frameCount,  double stepTime,  bool loop)  $default,) {final _that = this;
switch (_that) {
case _AnimationComponent():
return $default(_that.spriteSheet,_that.frameCount,_that.stepTime,_that.loop);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String spriteSheet,  int frameCount,  double stepTime,  bool loop)?  $default,) {final _that = this;
switch (_that) {
case _AnimationComponent() when $default != null:
return $default(_that.spriteSheet,_that.frameCount,_that.stepTime,_that.loop);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnimationComponent implements AnimationComponent {
  const _AnimationComponent({required this.spriteSheet, required this.frameCount, required this.stepTime, this.loop = true});
  factory _AnimationComponent.fromJson(Map<String, dynamic> json) => _$AnimationComponentFromJson(json);

@override final  String spriteSheet;
@override final  int frameCount;
@override final  double stepTime;
@override@JsonKey() final  bool loop;

/// Create a copy of AnimationComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimationComponentCopyWith<_AnimationComponent> get copyWith => __$AnimationComponentCopyWithImpl<_AnimationComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnimationComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnimationComponent&&(identical(other.spriteSheet, spriteSheet) || other.spriteSheet == spriteSheet)&&(identical(other.frameCount, frameCount) || other.frameCount == frameCount)&&(identical(other.stepTime, stepTime) || other.stepTime == stepTime)&&(identical(other.loop, loop) || other.loop == loop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,spriteSheet,frameCount,stepTime,loop);

@override
String toString() {
  return 'AnimationComponent(spriteSheet: $spriteSheet, frameCount: $frameCount, stepTime: $stepTime, loop: $loop)';
}


}

/// @nodoc
abstract mixin class _$AnimationComponentCopyWith<$Res> implements $AnimationComponentCopyWith<$Res> {
  factory _$AnimationComponentCopyWith(_AnimationComponent value, $Res Function(_AnimationComponent) _then) = __$AnimationComponentCopyWithImpl;
@override @useResult
$Res call({
 String spriteSheet, int frameCount, double stepTime, bool loop
});




}
/// @nodoc
class __$AnimationComponentCopyWithImpl<$Res>
    implements _$AnimationComponentCopyWith<$Res> {
  __$AnimationComponentCopyWithImpl(this._self, this._then);

  final _AnimationComponent _self;
  final $Res Function(_AnimationComponent) _then;

/// Create a copy of AnimationComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? spriteSheet = null,Object? frameCount = null,Object? stepTime = null,Object? loop = null,}) {
  return _then(_AnimationComponent(
spriteSheet: null == spriteSheet ? _self.spriteSheet : spriteSheet // ignore: cast_nullable_to_non_nullable
as String,frameCount: null == frameCount ? _self.frameCount : frameCount // ignore: cast_nullable_to_non_nullable
as int,stepTime: null == stepTime ? _self.stepTime : stepTime // ignore: cast_nullable_to_non_nullable
as double,loop: null == loop ? _self.loop : loop // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PhysicsComponent {

 PhysicsBodyType get bodyType; double get mass; double get friction; double get restitution; bool get fixedRotation;
/// Create a copy of PhysicsComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhysicsComponentCopyWith<PhysicsComponent> get copyWith => _$PhysicsComponentCopyWithImpl<PhysicsComponent>(this as PhysicsComponent, _$identity);

  /// Serializes this PhysicsComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhysicsComponent&&(identical(other.bodyType, bodyType) || other.bodyType == bodyType)&&(identical(other.mass, mass) || other.mass == mass)&&(identical(other.friction, friction) || other.friction == friction)&&(identical(other.restitution, restitution) || other.restitution == restitution)&&(identical(other.fixedRotation, fixedRotation) || other.fixedRotation == fixedRotation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bodyType,mass,friction,restitution,fixedRotation);

@override
String toString() {
  return 'PhysicsComponent(bodyType: $bodyType, mass: $mass, friction: $friction, restitution: $restitution, fixedRotation: $fixedRotation)';
}


}

/// @nodoc
abstract mixin class $PhysicsComponentCopyWith<$Res>  {
  factory $PhysicsComponentCopyWith(PhysicsComponent value, $Res Function(PhysicsComponent) _then) = _$PhysicsComponentCopyWithImpl;
@useResult
$Res call({
 PhysicsBodyType bodyType, double mass, double friction, double restitution, bool fixedRotation
});




}
/// @nodoc
class _$PhysicsComponentCopyWithImpl<$Res>
    implements $PhysicsComponentCopyWith<$Res> {
  _$PhysicsComponentCopyWithImpl(this._self, this._then);

  final PhysicsComponent _self;
  final $Res Function(PhysicsComponent) _then;

/// Create a copy of PhysicsComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bodyType = null,Object? mass = null,Object? friction = null,Object? restitution = null,Object? fixedRotation = null,}) {
  return _then(_self.copyWith(
bodyType: null == bodyType ? _self.bodyType : bodyType // ignore: cast_nullable_to_non_nullable
as PhysicsBodyType,mass: null == mass ? _self.mass : mass // ignore: cast_nullable_to_non_nullable
as double,friction: null == friction ? _self.friction : friction // ignore: cast_nullable_to_non_nullable
as double,restitution: null == restitution ? _self.restitution : restitution // ignore: cast_nullable_to_non_nullable
as double,fixedRotation: null == fixedRotation ? _self.fixedRotation : fixedRotation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PhysicsComponent].
extension PhysicsComponentPatterns on PhysicsComponent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhysicsComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhysicsComponent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhysicsComponent value)  $default,){
final _that = this;
switch (_that) {
case _PhysicsComponent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhysicsComponent value)?  $default,){
final _that = this;
switch (_that) {
case _PhysicsComponent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PhysicsBodyType bodyType,  double mass,  double friction,  double restitution,  bool fixedRotation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhysicsComponent() when $default != null:
return $default(_that.bodyType,_that.mass,_that.friction,_that.restitution,_that.fixedRotation);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PhysicsBodyType bodyType,  double mass,  double friction,  double restitution,  bool fixedRotation)  $default,) {final _that = this;
switch (_that) {
case _PhysicsComponent():
return $default(_that.bodyType,_that.mass,_that.friction,_that.restitution,_that.fixedRotation);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PhysicsBodyType bodyType,  double mass,  double friction,  double restitution,  bool fixedRotation)?  $default,) {final _that = this;
switch (_that) {
case _PhysicsComponent() when $default != null:
return $default(_that.bodyType,_that.mass,_that.friction,_that.restitution,_that.fixedRotation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhysicsComponent implements PhysicsComponent {
  const _PhysicsComponent({this.bodyType = PhysicsBodyType.dynamic, this.mass = 1.0, this.friction = 0.3, this.restitution = 0.0, this.fixedRotation = false});
  factory _PhysicsComponent.fromJson(Map<String, dynamic> json) => _$PhysicsComponentFromJson(json);

@override@JsonKey() final  PhysicsBodyType bodyType;
@override@JsonKey() final  double mass;
@override@JsonKey() final  double friction;
@override@JsonKey() final  double restitution;
@override@JsonKey() final  bool fixedRotation;

/// Create a copy of PhysicsComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhysicsComponentCopyWith<_PhysicsComponent> get copyWith => __$PhysicsComponentCopyWithImpl<_PhysicsComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhysicsComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhysicsComponent&&(identical(other.bodyType, bodyType) || other.bodyType == bodyType)&&(identical(other.mass, mass) || other.mass == mass)&&(identical(other.friction, friction) || other.friction == friction)&&(identical(other.restitution, restitution) || other.restitution == restitution)&&(identical(other.fixedRotation, fixedRotation) || other.fixedRotation == fixedRotation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bodyType,mass,friction,restitution,fixedRotation);

@override
String toString() {
  return 'PhysicsComponent(bodyType: $bodyType, mass: $mass, friction: $friction, restitution: $restitution, fixedRotation: $fixedRotation)';
}


}

/// @nodoc
abstract mixin class _$PhysicsComponentCopyWith<$Res> implements $PhysicsComponentCopyWith<$Res> {
  factory _$PhysicsComponentCopyWith(_PhysicsComponent value, $Res Function(_PhysicsComponent) _then) = __$PhysicsComponentCopyWithImpl;
@override @useResult
$Res call({
 PhysicsBodyType bodyType, double mass, double friction, double restitution, bool fixedRotation
});




}
/// @nodoc
class __$PhysicsComponentCopyWithImpl<$Res>
    implements _$PhysicsComponentCopyWith<$Res> {
  __$PhysicsComponentCopyWithImpl(this._self, this._then);

  final _PhysicsComponent _self;
  final $Res Function(_PhysicsComponent) _then;

/// Create a copy of PhysicsComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bodyType = null,Object? mass = null,Object? friction = null,Object? restitution = null,Object? fixedRotation = null,}) {
  return _then(_PhysicsComponent(
bodyType: null == bodyType ? _self.bodyType : bodyType // ignore: cast_nullable_to_non_nullable
as PhysicsBodyType,mass: null == mass ? _self.mass : mass // ignore: cast_nullable_to_non_nullable
as double,friction: null == friction ? _self.friction : friction // ignore: cast_nullable_to_non_nullable
as double,restitution: null == restitution ? _self.restitution : restitution // ignore: cast_nullable_to_non_nullable
as double,fixedRotation: null == fixedRotation ? _self.fixedRotation : fixedRotation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CollisionComponent {

 CollisionShape get shape; bool get isSensor; List<String> get collidesWith;
/// Create a copy of CollisionComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollisionComponentCopyWith<CollisionComponent> get copyWith => _$CollisionComponentCopyWithImpl<CollisionComponent>(this as CollisionComponent, _$identity);

  /// Serializes this CollisionComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollisionComponent&&(identical(other.shape, shape) || other.shape == shape)&&(identical(other.isSensor, isSensor) || other.isSensor == isSensor)&&const DeepCollectionEquality().equals(other.collidesWith, collidesWith));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shape,isSensor,const DeepCollectionEquality().hash(collidesWith));

@override
String toString() {
  return 'CollisionComponent(shape: $shape, isSensor: $isSensor, collidesWith: $collidesWith)';
}


}

/// @nodoc
abstract mixin class $CollisionComponentCopyWith<$Res>  {
  factory $CollisionComponentCopyWith(CollisionComponent value, $Res Function(CollisionComponent) _then) = _$CollisionComponentCopyWithImpl;
@useResult
$Res call({
 CollisionShape shape, bool isSensor, List<String> collidesWith
});




}
/// @nodoc
class _$CollisionComponentCopyWithImpl<$Res>
    implements $CollisionComponentCopyWith<$Res> {
  _$CollisionComponentCopyWithImpl(this._self, this._then);

  final CollisionComponent _self;
  final $Res Function(CollisionComponent) _then;

/// Create a copy of CollisionComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shape = null,Object? isSensor = null,Object? collidesWith = null,}) {
  return _then(_self.copyWith(
shape: null == shape ? _self.shape : shape // ignore: cast_nullable_to_non_nullable
as CollisionShape,isSensor: null == isSensor ? _self.isSensor : isSensor // ignore: cast_nullable_to_non_nullable
as bool,collidesWith: null == collidesWith ? _self.collidesWith : collidesWith // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CollisionComponent].
extension CollisionComponentPatterns on CollisionComponent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollisionComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollisionComponent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollisionComponent value)  $default,){
final _that = this;
switch (_that) {
case _CollisionComponent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollisionComponent value)?  $default,){
final _that = this;
switch (_that) {
case _CollisionComponent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CollisionShape shape,  bool isSensor,  List<String> collidesWith)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollisionComponent() when $default != null:
return $default(_that.shape,_that.isSensor,_that.collidesWith);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CollisionShape shape,  bool isSensor,  List<String> collidesWith)  $default,) {final _that = this;
switch (_that) {
case _CollisionComponent():
return $default(_that.shape,_that.isSensor,_that.collidesWith);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CollisionShape shape,  bool isSensor,  List<String> collidesWith)?  $default,) {final _that = this;
switch (_that) {
case _CollisionComponent() when $default != null:
return $default(_that.shape,_that.isSensor,_that.collidesWith);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CollisionComponent implements CollisionComponent {
  const _CollisionComponent({this.shape = CollisionShape.rectangle, this.isSensor = false, final  List<String> collidesWith = const []}): _collidesWith = collidesWith;
  factory _CollisionComponent.fromJson(Map<String, dynamic> json) => _$CollisionComponentFromJson(json);

@override@JsonKey() final  CollisionShape shape;
@override@JsonKey() final  bool isSensor;
 final  List<String> _collidesWith;
@override@JsonKey() List<String> get collidesWith {
  if (_collidesWith is EqualUnmodifiableListView) return _collidesWith;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_collidesWith);
}


/// Create a copy of CollisionComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollisionComponentCopyWith<_CollisionComponent> get copyWith => __$CollisionComponentCopyWithImpl<_CollisionComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollisionComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollisionComponent&&(identical(other.shape, shape) || other.shape == shape)&&(identical(other.isSensor, isSensor) || other.isSensor == isSensor)&&const DeepCollectionEquality().equals(other._collidesWith, _collidesWith));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shape,isSensor,const DeepCollectionEquality().hash(_collidesWith));

@override
String toString() {
  return 'CollisionComponent(shape: $shape, isSensor: $isSensor, collidesWith: $collidesWith)';
}


}

/// @nodoc
abstract mixin class _$CollisionComponentCopyWith<$Res> implements $CollisionComponentCopyWith<$Res> {
  factory _$CollisionComponentCopyWith(_CollisionComponent value, $Res Function(_CollisionComponent) _then) = __$CollisionComponentCopyWithImpl;
@override @useResult
$Res call({
 CollisionShape shape, bool isSensor, List<String> collidesWith
});




}
/// @nodoc
class __$CollisionComponentCopyWithImpl<$Res>
    implements _$CollisionComponentCopyWith<$Res> {
  __$CollisionComponentCopyWithImpl(this._self, this._then);

  final _CollisionComponent _self;
  final $Res Function(_CollisionComponent) _then;

/// Create a copy of CollisionComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shape = null,Object? isSensor = null,Object? collidesWith = null,}) {
  return _then(_CollisionComponent(
shape: null == shape ? _self.shape : shape // ignore: cast_nullable_to_non_nullable
as CollisionShape,isSensor: null == isSensor ? _self.isSensor : isSensor // ignore: cast_nullable_to_non_nullable
as bool,collidesWith: null == collidesWith ? _self._collidesWith : collidesWith // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$MovementComponent {

 double get speed; double? get jumpForce; bool get canMove; bool get canJump; double get airControl;
/// Create a copy of MovementComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovementComponentCopyWith<MovementComponent> get copyWith => _$MovementComponentCopyWithImpl<MovementComponent>(this as MovementComponent, _$identity);

  /// Serializes this MovementComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovementComponent&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.jumpForce, jumpForce) || other.jumpForce == jumpForce)&&(identical(other.canMove, canMove) || other.canMove == canMove)&&(identical(other.canJump, canJump) || other.canJump == canJump)&&(identical(other.airControl, airControl) || other.airControl == airControl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed,jumpForce,canMove,canJump,airControl);

@override
String toString() {
  return 'MovementComponent(speed: $speed, jumpForce: $jumpForce, canMove: $canMove, canJump: $canJump, airControl: $airControl)';
}


}

/// @nodoc
abstract mixin class $MovementComponentCopyWith<$Res>  {
  factory $MovementComponentCopyWith(MovementComponent value, $Res Function(MovementComponent) _then) = _$MovementComponentCopyWithImpl;
@useResult
$Res call({
 double speed, double? jumpForce, bool canMove, bool canJump, double airControl
});




}
/// @nodoc
class _$MovementComponentCopyWithImpl<$Res>
    implements $MovementComponentCopyWith<$Res> {
  _$MovementComponentCopyWithImpl(this._self, this._then);

  final MovementComponent _self;
  final $Res Function(MovementComponent) _then;

/// Create a copy of MovementComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? speed = null,Object? jumpForce = freezed,Object? canMove = null,Object? canJump = null,Object? airControl = null,}) {
  return _then(_self.copyWith(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,jumpForce: freezed == jumpForce ? _self.jumpForce : jumpForce // ignore: cast_nullable_to_non_nullable
as double?,canMove: null == canMove ? _self.canMove : canMove // ignore: cast_nullable_to_non_nullable
as bool,canJump: null == canJump ? _self.canJump : canJump // ignore: cast_nullable_to_non_nullable
as bool,airControl: null == airControl ? _self.airControl : airControl // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MovementComponent].
extension MovementComponentPatterns on MovementComponent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovementComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovementComponent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovementComponent value)  $default,){
final _that = this;
switch (_that) {
case _MovementComponent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovementComponent value)?  $default,){
final _that = this;
switch (_that) {
case _MovementComponent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double speed,  double? jumpForce,  bool canMove,  bool canJump,  double airControl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovementComponent() when $default != null:
return $default(_that.speed,_that.jumpForce,_that.canMove,_that.canJump,_that.airControl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double speed,  double? jumpForce,  bool canMove,  bool canJump,  double airControl)  $default,) {final _that = this;
switch (_that) {
case _MovementComponent():
return $default(_that.speed,_that.jumpForce,_that.canMove,_that.canJump,_that.airControl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double speed,  double? jumpForce,  bool canMove,  bool canJump,  double airControl)?  $default,) {final _that = this;
switch (_that) {
case _MovementComponent() when $default != null:
return $default(_that.speed,_that.jumpForce,_that.canMove,_that.canJump,_that.airControl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovementComponent implements MovementComponent {
  const _MovementComponent({this.speed = 100.0, this.jumpForce, this.canMove = true, this.canJump = false, this.airControl = 0.5});
  factory _MovementComponent.fromJson(Map<String, dynamic> json) => _$MovementComponentFromJson(json);

@override@JsonKey() final  double speed;
@override final  double? jumpForce;
@override@JsonKey() final  bool canMove;
@override@JsonKey() final  bool canJump;
@override@JsonKey() final  double airControl;

/// Create a copy of MovementComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovementComponentCopyWith<_MovementComponent> get copyWith => __$MovementComponentCopyWithImpl<_MovementComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovementComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovementComponent&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.jumpForce, jumpForce) || other.jumpForce == jumpForce)&&(identical(other.canMove, canMove) || other.canMove == canMove)&&(identical(other.canJump, canJump) || other.canJump == canJump)&&(identical(other.airControl, airControl) || other.airControl == airControl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed,jumpForce,canMove,canJump,airControl);

@override
String toString() {
  return 'MovementComponent(speed: $speed, jumpForce: $jumpForce, canMove: $canMove, canJump: $canJump, airControl: $airControl)';
}


}

/// @nodoc
abstract mixin class _$MovementComponentCopyWith<$Res> implements $MovementComponentCopyWith<$Res> {
  factory _$MovementComponentCopyWith(_MovementComponent value, $Res Function(_MovementComponent) _then) = __$MovementComponentCopyWithImpl;
@override @useResult
$Res call({
 double speed, double? jumpForce, bool canMove, bool canJump, double airControl
});




}
/// @nodoc
class __$MovementComponentCopyWithImpl<$Res>
    implements _$MovementComponentCopyWith<$Res> {
  __$MovementComponentCopyWithImpl(this._self, this._then);

  final _MovementComponent _self;
  final $Res Function(_MovementComponent) _then;

/// Create a copy of MovementComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? speed = null,Object? jumpForce = freezed,Object? canMove = null,Object? canJump = null,Object? airControl = null,}) {
  return _then(_MovementComponent(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,jumpForce: freezed == jumpForce ? _self.jumpForce : jumpForce // ignore: cast_nullable_to_non_nullable
as double?,canMove: null == canMove ? _self.canMove : canMove // ignore: cast_nullable_to_non_nullable
as bool,canJump: null == canJump ? _self.canJump : canJump // ignore: cast_nullable_to_non_nullable
as bool,airControl: null == airControl ? _self.airControl : airControl // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$HealthComponent {

 int get max; int? get current; double get invulnerabilityTime;
/// Create a copy of HealthComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthComponentCopyWith<HealthComponent> get copyWith => _$HealthComponentCopyWithImpl<HealthComponent>(this as HealthComponent, _$identity);

  /// Serializes this HealthComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthComponent&&(identical(other.max, max) || other.max == max)&&(identical(other.current, current) || other.current == current)&&(identical(other.invulnerabilityTime, invulnerabilityTime) || other.invulnerabilityTime == invulnerabilityTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,max,current,invulnerabilityTime);

@override
String toString() {
  return 'HealthComponent(max: $max, current: $current, invulnerabilityTime: $invulnerabilityTime)';
}


}

/// @nodoc
abstract mixin class $HealthComponentCopyWith<$Res>  {
  factory $HealthComponentCopyWith(HealthComponent value, $Res Function(HealthComponent) _then) = _$HealthComponentCopyWithImpl;
@useResult
$Res call({
 int max, int? current, double invulnerabilityTime
});




}
/// @nodoc
class _$HealthComponentCopyWithImpl<$Res>
    implements $HealthComponentCopyWith<$Res> {
  _$HealthComponentCopyWithImpl(this._self, this._then);

  final HealthComponent _self;
  final $Res Function(HealthComponent) _then;

/// Create a copy of HealthComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? max = null,Object? current = freezed,Object? invulnerabilityTime = null,}) {
  return _then(_self.copyWith(
max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int?,invulnerabilityTime: null == invulnerabilityTime ? _self.invulnerabilityTime : invulnerabilityTime // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthComponent].
extension HealthComponentPatterns on HealthComponent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthComponent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthComponent value)  $default,){
final _that = this;
switch (_that) {
case _HealthComponent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthComponent value)?  $default,){
final _that = this;
switch (_that) {
case _HealthComponent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int max,  int? current,  double invulnerabilityTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthComponent() when $default != null:
return $default(_that.max,_that.current,_that.invulnerabilityTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int max,  int? current,  double invulnerabilityTime)  $default,) {final _that = this;
switch (_that) {
case _HealthComponent():
return $default(_that.max,_that.current,_that.invulnerabilityTime);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int max,  int? current,  double invulnerabilityTime)?  $default,) {final _that = this;
switch (_that) {
case _HealthComponent() when $default != null:
return $default(_that.max,_that.current,_that.invulnerabilityTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthComponent implements HealthComponent {
  const _HealthComponent({this.max = 1, this.current, this.invulnerabilityTime = 1.0});
  factory _HealthComponent.fromJson(Map<String, dynamic> json) => _$HealthComponentFromJson(json);

@override@JsonKey() final  int max;
@override final  int? current;
@override@JsonKey() final  double invulnerabilityTime;

/// Create a copy of HealthComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthComponentCopyWith<_HealthComponent> get copyWith => __$HealthComponentCopyWithImpl<_HealthComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthComponent&&(identical(other.max, max) || other.max == max)&&(identical(other.current, current) || other.current == current)&&(identical(other.invulnerabilityTime, invulnerabilityTime) || other.invulnerabilityTime == invulnerabilityTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,max,current,invulnerabilityTime);

@override
String toString() {
  return 'HealthComponent(max: $max, current: $current, invulnerabilityTime: $invulnerabilityTime)';
}


}

/// @nodoc
abstract mixin class _$HealthComponentCopyWith<$Res> implements $HealthComponentCopyWith<$Res> {
  factory _$HealthComponentCopyWith(_HealthComponent value, $Res Function(_HealthComponent) _then) = __$HealthComponentCopyWithImpl;
@override @useResult
$Res call({
 int max, int? current, double invulnerabilityTime
});




}
/// @nodoc
class __$HealthComponentCopyWithImpl<$Res>
    implements _$HealthComponentCopyWith<$Res> {
  __$HealthComponentCopyWithImpl(this._self, this._then);

  final _HealthComponent _self;
  final $Res Function(_HealthComponent) _then;

/// Create a copy of HealthComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? max = null,Object? current = freezed,Object? invulnerabilityTime = null,}) {
  return _then(_HealthComponent(
max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int?,invulnerabilityTime: null == invulnerabilityTime ? _self.invulnerabilityTime : invulnerabilityTime // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$AIComponent {

 AIType get type; double get speed; double get detectionRange; List<Position> get waypoints; double get waitTime;
/// Create a copy of AIComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIComponentCopyWith<AIComponent> get copyWith => _$AIComponentCopyWithImpl<AIComponent>(this as AIComponent, _$identity);

  /// Serializes this AIComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIComponent&&(identical(other.type, type) || other.type == type)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.detectionRange, detectionRange) || other.detectionRange == detectionRange)&&const DeepCollectionEquality().equals(other.waypoints, waypoints)&&(identical(other.waitTime, waitTime) || other.waitTime == waitTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,speed,detectionRange,const DeepCollectionEquality().hash(waypoints),waitTime);

@override
String toString() {
  return 'AIComponent(type: $type, speed: $speed, detectionRange: $detectionRange, waypoints: $waypoints, waitTime: $waitTime)';
}


}

/// @nodoc
abstract mixin class $AIComponentCopyWith<$Res>  {
  factory $AIComponentCopyWith(AIComponent value, $Res Function(AIComponent) _then) = _$AIComponentCopyWithImpl;
@useResult
$Res call({
 AIType type, double speed, double detectionRange, List<Position> waypoints, double waitTime
});




}
/// @nodoc
class _$AIComponentCopyWithImpl<$Res>
    implements $AIComponentCopyWith<$Res> {
  _$AIComponentCopyWithImpl(this._self, this._then);

  final AIComponent _self;
  final $Res Function(AIComponent) _then;

/// Create a copy of AIComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? speed = null,Object? detectionRange = null,Object? waypoints = null,Object? waitTime = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AIType,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,detectionRange: null == detectionRange ? _self.detectionRange : detectionRange // ignore: cast_nullable_to_non_nullable
as double,waypoints: null == waypoints ? _self.waypoints : waypoints // ignore: cast_nullable_to_non_nullable
as List<Position>,waitTime: null == waitTime ? _self.waitTime : waitTime // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AIComponent].
extension AIComponentPatterns on AIComponent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIComponent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIComponent value)  $default,){
final _that = this;
switch (_that) {
case _AIComponent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIComponent value)?  $default,){
final _that = this;
switch (_that) {
case _AIComponent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AIType type,  double speed,  double detectionRange,  List<Position> waypoints,  double waitTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIComponent() when $default != null:
return $default(_that.type,_that.speed,_that.detectionRange,_that.waypoints,_that.waitTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AIType type,  double speed,  double detectionRange,  List<Position> waypoints,  double waitTime)  $default,) {final _that = this;
switch (_that) {
case _AIComponent():
return $default(_that.type,_that.speed,_that.detectionRange,_that.waypoints,_that.waitTime);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AIType type,  double speed,  double detectionRange,  List<Position> waypoints,  double waitTime)?  $default,) {final _that = this;
switch (_that) {
case _AIComponent() when $default != null:
return $default(_that.type,_that.speed,_that.detectionRange,_that.waypoints,_that.waitTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AIComponent implements AIComponent {
  const _AIComponent({required this.type, this.speed = 50.0, this.detectionRange = 100.0, final  List<Position> waypoints = const [], this.waitTime = 1.0}): _waypoints = waypoints;
  factory _AIComponent.fromJson(Map<String, dynamic> json) => _$AIComponentFromJson(json);

@override final  AIType type;
@override@JsonKey() final  double speed;
@override@JsonKey() final  double detectionRange;
 final  List<Position> _waypoints;
@override@JsonKey() List<Position> get waypoints {
  if (_waypoints is EqualUnmodifiableListView) return _waypoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_waypoints);
}

@override@JsonKey() final  double waitTime;

/// Create a copy of AIComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIComponentCopyWith<_AIComponent> get copyWith => __$AIComponentCopyWithImpl<_AIComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AIComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIComponent&&(identical(other.type, type) || other.type == type)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.detectionRange, detectionRange) || other.detectionRange == detectionRange)&&const DeepCollectionEquality().equals(other._waypoints, _waypoints)&&(identical(other.waitTime, waitTime) || other.waitTime == waitTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,speed,detectionRange,const DeepCollectionEquality().hash(_waypoints),waitTime);

@override
String toString() {
  return 'AIComponent(type: $type, speed: $speed, detectionRange: $detectionRange, waypoints: $waypoints, waitTime: $waitTime)';
}


}

/// @nodoc
abstract mixin class _$AIComponentCopyWith<$Res> implements $AIComponentCopyWith<$Res> {
  factory _$AIComponentCopyWith(_AIComponent value, $Res Function(_AIComponent) _then) = __$AIComponentCopyWithImpl;
@override @useResult
$Res call({
 AIType type, double speed, double detectionRange, List<Position> waypoints, double waitTime
});




}
/// @nodoc
class __$AIComponentCopyWithImpl<$Res>
    implements _$AIComponentCopyWith<$Res> {
  __$AIComponentCopyWithImpl(this._self, this._then);

  final _AIComponent _self;
  final $Res Function(_AIComponent) _then;

/// Create a copy of AIComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? speed = null,Object? detectionRange = null,Object? waypoints = null,Object? waitTime = null,}) {
  return _then(_AIComponent(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AIType,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,detectionRange: null == detectionRange ? _self.detectionRange : detectionRange // ignore: cast_nullable_to_non_nullable
as double,waypoints: null == waypoints ? _self._waypoints : waypoints // ignore: cast_nullable_to_non_nullable
as List<Position>,waitTime: null == waitTime ? _self.waitTime : waitTime // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CollectibleComponent {

 int get value; CollectibleType get type; bool get destroyOnCollect; CollectibleEffect? get effect;
/// Create a copy of CollectibleComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectibleComponentCopyWith<CollectibleComponent> get copyWith => _$CollectibleComponentCopyWithImpl<CollectibleComponent>(this as CollectibleComponent, _$identity);

  /// Serializes this CollectibleComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectibleComponent&&(identical(other.value, value) || other.value == value)&&(identical(other.type, type) || other.type == type)&&(identical(other.destroyOnCollect, destroyOnCollect) || other.destroyOnCollect == destroyOnCollect)&&(identical(other.effect, effect) || other.effect == effect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,type,destroyOnCollect,effect);

@override
String toString() {
  return 'CollectibleComponent(value: $value, type: $type, destroyOnCollect: $destroyOnCollect, effect: $effect)';
}


}

/// @nodoc
abstract mixin class $CollectibleComponentCopyWith<$Res>  {
  factory $CollectibleComponentCopyWith(CollectibleComponent value, $Res Function(CollectibleComponent) _then) = _$CollectibleComponentCopyWithImpl;
@useResult
$Res call({
 int value, CollectibleType type, bool destroyOnCollect, CollectibleEffect? effect
});


$CollectibleEffectCopyWith<$Res>? get effect;

}
/// @nodoc
class _$CollectibleComponentCopyWithImpl<$Res>
    implements $CollectibleComponentCopyWith<$Res> {
  _$CollectibleComponentCopyWithImpl(this._self, this._then);

  final CollectibleComponent _self;
  final $Res Function(CollectibleComponent) _then;

/// Create a copy of CollectibleComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? type = null,Object? destroyOnCollect = null,Object? effect = freezed,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CollectibleType,destroyOnCollect: null == destroyOnCollect ? _self.destroyOnCollect : destroyOnCollect // ignore: cast_nullable_to_non_nullable
as bool,effect: freezed == effect ? _self.effect : effect // ignore: cast_nullable_to_non_nullable
as CollectibleEffect?,
  ));
}
/// Create a copy of CollectibleComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectibleEffectCopyWith<$Res>? get effect {
    if (_self.effect == null) {
    return null;
  }

  return $CollectibleEffectCopyWith<$Res>(_self.effect!, (value) {
    return _then(_self.copyWith(effect: value));
  });
}
}


/// Adds pattern-matching-related methods to [CollectibleComponent].
extension CollectibleComponentPatterns on CollectibleComponent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollectibleComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollectibleComponent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollectibleComponent value)  $default,){
final _that = this;
switch (_that) {
case _CollectibleComponent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollectibleComponent value)?  $default,){
final _that = this;
switch (_that) {
case _CollectibleComponent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int value,  CollectibleType type,  bool destroyOnCollect,  CollectibleEffect? effect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollectibleComponent() when $default != null:
return $default(_that.value,_that.type,_that.destroyOnCollect,_that.effect);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int value,  CollectibleType type,  bool destroyOnCollect,  CollectibleEffect? effect)  $default,) {final _that = this;
switch (_that) {
case _CollectibleComponent():
return $default(_that.value,_that.type,_that.destroyOnCollect,_that.effect);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int value,  CollectibleType type,  bool destroyOnCollect,  CollectibleEffect? effect)?  $default,) {final _that = this;
switch (_that) {
case _CollectibleComponent() when $default != null:
return $default(_that.value,_that.type,_that.destroyOnCollect,_that.effect);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CollectibleComponent implements CollectibleComponent {
  const _CollectibleComponent({this.value = 10, this.type = CollectibleType.coin, this.destroyOnCollect = true, this.effect});
  factory _CollectibleComponent.fromJson(Map<String, dynamic> json) => _$CollectibleComponentFromJson(json);

@override@JsonKey() final  int value;
@override@JsonKey() final  CollectibleType type;
@override@JsonKey() final  bool destroyOnCollect;
@override final  CollectibleEffect? effect;

/// Create a copy of CollectibleComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectibleComponentCopyWith<_CollectibleComponent> get copyWith => __$CollectibleComponentCopyWithImpl<_CollectibleComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollectibleComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollectibleComponent&&(identical(other.value, value) || other.value == value)&&(identical(other.type, type) || other.type == type)&&(identical(other.destroyOnCollect, destroyOnCollect) || other.destroyOnCollect == destroyOnCollect)&&(identical(other.effect, effect) || other.effect == effect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,type,destroyOnCollect,effect);

@override
String toString() {
  return 'CollectibleComponent(value: $value, type: $type, destroyOnCollect: $destroyOnCollect, effect: $effect)';
}


}

/// @nodoc
abstract mixin class _$CollectibleComponentCopyWith<$Res> implements $CollectibleComponentCopyWith<$Res> {
  factory _$CollectibleComponentCopyWith(_CollectibleComponent value, $Res Function(_CollectibleComponent) _then) = __$CollectibleComponentCopyWithImpl;
@override @useResult
$Res call({
 int value, CollectibleType type, bool destroyOnCollect, CollectibleEffect? effect
});


@override $CollectibleEffectCopyWith<$Res>? get effect;

}
/// @nodoc
class __$CollectibleComponentCopyWithImpl<$Res>
    implements _$CollectibleComponentCopyWith<$Res> {
  __$CollectibleComponentCopyWithImpl(this._self, this._then);

  final _CollectibleComponent _self;
  final $Res Function(_CollectibleComponent) _then;

/// Create a copy of CollectibleComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? type = null,Object? destroyOnCollect = null,Object? effect = freezed,}) {
  return _then(_CollectibleComponent(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CollectibleType,destroyOnCollect: null == destroyOnCollect ? _self.destroyOnCollect : destroyOnCollect // ignore: cast_nullable_to_non_nullable
as bool,effect: freezed == effect ? _self.effect : effect // ignore: cast_nullable_to_non_nullable
as CollectibleEffect?,
  ));
}

/// Create a copy of CollectibleComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectibleEffectCopyWith<$Res>? get effect {
    if (_self.effect == null) {
    return null;
  }

  return $CollectibleEffectCopyWith<$Res>(_self.effect!, (value) {
    return _then(_self.copyWith(effect: value));
  });
}
}


/// @nodoc
mixin _$CollectibleEffect {

 EffectType get type; double get value;
/// Create a copy of CollectibleEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectibleEffectCopyWith<CollectibleEffect> get copyWith => _$CollectibleEffectCopyWithImpl<CollectibleEffect>(this as CollectibleEffect, _$identity);

  /// Serializes this CollectibleEffect to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectibleEffect&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'CollectibleEffect(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class $CollectibleEffectCopyWith<$Res>  {
  factory $CollectibleEffectCopyWith(CollectibleEffect value, $Res Function(CollectibleEffect) _then) = _$CollectibleEffectCopyWithImpl;
@useResult
$Res call({
 EffectType type, double value
});




}
/// @nodoc
class _$CollectibleEffectCopyWithImpl<$Res>
    implements $CollectibleEffectCopyWith<$Res> {
  _$CollectibleEffectCopyWithImpl(this._self, this._then);

  final CollectibleEffect _self;
  final $Res Function(CollectibleEffect) _then;

/// Create a copy of CollectibleEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as EffectType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CollectibleEffect].
extension CollectibleEffectPatterns on CollectibleEffect {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollectibleEffect value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollectibleEffect() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollectibleEffect value)  $default,){
final _that = this;
switch (_that) {
case _CollectibleEffect():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollectibleEffect value)?  $default,){
final _that = this;
switch (_that) {
case _CollectibleEffect() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EffectType type,  double value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollectibleEffect() when $default != null:
return $default(_that.type,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EffectType type,  double value)  $default,) {final _that = this;
switch (_that) {
case _CollectibleEffect():
return $default(_that.type,_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EffectType type,  double value)?  $default,) {final _that = this;
switch (_that) {
case _CollectibleEffect() when $default != null:
return $default(_that.type,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CollectibleEffect implements CollectibleEffect {
  const _CollectibleEffect({required this.type, required this.value});
  factory _CollectibleEffect.fromJson(Map<String, dynamic> json) => _$CollectibleEffectFromJson(json);

@override final  EffectType type;
@override final  double value;

/// Create a copy of CollectibleEffect
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectibleEffectCopyWith<_CollectibleEffect> get copyWith => __$CollectibleEffectCopyWithImpl<_CollectibleEffect>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollectibleEffectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollectibleEffect&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'CollectibleEffect(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class _$CollectibleEffectCopyWith<$Res> implements $CollectibleEffectCopyWith<$Res> {
  factory _$CollectibleEffectCopyWith(_CollectibleEffect value, $Res Function(_CollectibleEffect) _then) = __$CollectibleEffectCopyWithImpl;
@override @useResult
$Res call({
 EffectType type, double value
});




}
/// @nodoc
class __$CollectibleEffectCopyWithImpl<$Res>
    implements _$CollectibleEffectCopyWith<$Res> {
  __$CollectibleEffectCopyWithImpl(this._self, this._then);

  final _CollectibleEffect _self;
  final $Res Function(_CollectibleEffect) _then;

/// Create a copy of CollectibleEffect
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,}) {
  return _then(_CollectibleEffect(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as EffectType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$DamageComponent {

 int get amount; List<String> get damageTypes; double get knockback;
/// Create a copy of DamageComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DamageComponentCopyWith<DamageComponent> get copyWith => _$DamageComponentCopyWithImpl<DamageComponent>(this as DamageComponent, _$identity);

  /// Serializes this DamageComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DamageComponent&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.damageTypes, damageTypes)&&(identical(other.knockback, knockback) || other.knockback == knockback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,const DeepCollectionEquality().hash(damageTypes),knockback);

@override
String toString() {
  return 'DamageComponent(amount: $amount, damageTypes: $damageTypes, knockback: $knockback)';
}


}

/// @nodoc
abstract mixin class $DamageComponentCopyWith<$Res>  {
  factory $DamageComponentCopyWith(DamageComponent value, $Res Function(DamageComponent) _then) = _$DamageComponentCopyWithImpl;
@useResult
$Res call({
 int amount, List<String> damageTypes, double knockback
});




}
/// @nodoc
class _$DamageComponentCopyWithImpl<$Res>
    implements $DamageComponentCopyWith<$Res> {
  _$DamageComponentCopyWithImpl(this._self, this._then);

  final DamageComponent _self;
  final $Res Function(DamageComponent) _then;

/// Create a copy of DamageComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? damageTypes = null,Object? knockback = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,damageTypes: null == damageTypes ? _self.damageTypes : damageTypes // ignore: cast_nullable_to_non_nullable
as List<String>,knockback: null == knockback ? _self.knockback : knockback // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DamageComponent].
extension DamageComponentPatterns on DamageComponent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DamageComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DamageComponent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DamageComponent value)  $default,){
final _that = this;
switch (_that) {
case _DamageComponent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DamageComponent value)?  $default,){
final _that = this;
switch (_that) {
case _DamageComponent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amount,  List<String> damageTypes,  double knockback)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DamageComponent() when $default != null:
return $default(_that.amount,_that.damageTypes,_that.knockback);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amount,  List<String> damageTypes,  double knockback)  $default,) {final _that = this;
switch (_that) {
case _DamageComponent():
return $default(_that.amount,_that.damageTypes,_that.knockback);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amount,  List<String> damageTypes,  double knockback)?  $default,) {final _that = this;
switch (_that) {
case _DamageComponent() when $default != null:
return $default(_that.amount,_that.damageTypes,_that.knockback);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DamageComponent implements DamageComponent {
  const _DamageComponent({this.amount = 1, final  List<String> damageTypes = const ['player'], this.knockback = 0.0}): _damageTypes = damageTypes;
  factory _DamageComponent.fromJson(Map<String, dynamic> json) => _$DamageComponentFromJson(json);

@override@JsonKey() final  int amount;
 final  List<String> _damageTypes;
@override@JsonKey() List<String> get damageTypes {
  if (_damageTypes is EqualUnmodifiableListView) return _damageTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_damageTypes);
}

@override@JsonKey() final  double knockback;

/// Create a copy of DamageComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DamageComponentCopyWith<_DamageComponent> get copyWith => __$DamageComponentCopyWithImpl<_DamageComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DamageComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DamageComponent&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other._damageTypes, _damageTypes)&&(identical(other.knockback, knockback) || other.knockback == knockback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,const DeepCollectionEquality().hash(_damageTypes),knockback);

@override
String toString() {
  return 'DamageComponent(amount: $amount, damageTypes: $damageTypes, knockback: $knockback)';
}


}

/// @nodoc
abstract mixin class _$DamageComponentCopyWith<$Res> implements $DamageComponentCopyWith<$Res> {
  factory _$DamageComponentCopyWith(_DamageComponent value, $Res Function(_DamageComponent) _then) = __$DamageComponentCopyWithImpl;
@override @useResult
$Res call({
 int amount, List<String> damageTypes, double knockback
});




}
/// @nodoc
class __$DamageComponentCopyWithImpl<$Res>
    implements _$DamageComponentCopyWith<$Res> {
  __$DamageComponentCopyWithImpl(this._self, this._then);

  final _DamageComponent _self;
  final $Res Function(_DamageComponent) _then;

/// Create a copy of DamageComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? damageTypes = null,Object? knockback = null,}) {
  return _then(_DamageComponent(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,damageTypes: null == damageTypes ? _self._damageTypes : damageTypes // ignore: cast_nullable_to_non_nullable
as List<String>,knockback: null == knockback ? _self.knockback : knockback // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$PlatformComponent {

 bool get oneWay; MovingPlatform? get moving;
/// Create a copy of PlatformComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlatformComponentCopyWith<PlatformComponent> get copyWith => _$PlatformComponentCopyWithImpl<PlatformComponent>(this as PlatformComponent, _$identity);

  /// Serializes this PlatformComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlatformComponent&&(identical(other.oneWay, oneWay) || other.oneWay == oneWay)&&(identical(other.moving, moving) || other.moving == moving));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oneWay,moving);

@override
String toString() {
  return 'PlatformComponent(oneWay: $oneWay, moving: $moving)';
}


}

/// @nodoc
abstract mixin class $PlatformComponentCopyWith<$Res>  {
  factory $PlatformComponentCopyWith(PlatformComponent value, $Res Function(PlatformComponent) _then) = _$PlatformComponentCopyWithImpl;
@useResult
$Res call({
 bool oneWay, MovingPlatform? moving
});


$MovingPlatformCopyWith<$Res>? get moving;

}
/// @nodoc
class _$PlatformComponentCopyWithImpl<$Res>
    implements $PlatformComponentCopyWith<$Res> {
  _$PlatformComponentCopyWithImpl(this._self, this._then);

  final PlatformComponent _self;
  final $Res Function(PlatformComponent) _then;

/// Create a copy of PlatformComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oneWay = null,Object? moving = freezed,}) {
  return _then(_self.copyWith(
oneWay: null == oneWay ? _self.oneWay : oneWay // ignore: cast_nullable_to_non_nullable
as bool,moving: freezed == moving ? _self.moving : moving // ignore: cast_nullable_to_non_nullable
as MovingPlatform?,
  ));
}
/// Create a copy of PlatformComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovingPlatformCopyWith<$Res>? get moving {
    if (_self.moving == null) {
    return null;
  }

  return $MovingPlatformCopyWith<$Res>(_self.moving!, (value) {
    return _then(_self.copyWith(moving: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlatformComponent].
extension PlatformComponentPatterns on PlatformComponent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlatformComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlatformComponent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlatformComponent value)  $default,){
final _that = this;
switch (_that) {
case _PlatformComponent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlatformComponent value)?  $default,){
final _that = this;
switch (_that) {
case _PlatformComponent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool oneWay,  MovingPlatform? moving)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlatformComponent() when $default != null:
return $default(_that.oneWay,_that.moving);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool oneWay,  MovingPlatform? moving)  $default,) {final _that = this;
switch (_that) {
case _PlatformComponent():
return $default(_that.oneWay,_that.moving);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool oneWay,  MovingPlatform? moving)?  $default,) {final _that = this;
switch (_that) {
case _PlatformComponent() when $default != null:
return $default(_that.oneWay,_that.moving);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlatformComponent implements PlatformComponent {
  const _PlatformComponent({this.oneWay = false, this.moving});
  factory _PlatformComponent.fromJson(Map<String, dynamic> json) => _$PlatformComponentFromJson(json);

@override@JsonKey() final  bool oneWay;
@override final  MovingPlatform? moving;

/// Create a copy of PlatformComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlatformComponentCopyWith<_PlatformComponent> get copyWith => __$PlatformComponentCopyWithImpl<_PlatformComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlatformComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlatformComponent&&(identical(other.oneWay, oneWay) || other.oneWay == oneWay)&&(identical(other.moving, moving) || other.moving == moving));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oneWay,moving);

@override
String toString() {
  return 'PlatformComponent(oneWay: $oneWay, moving: $moving)';
}


}

/// @nodoc
abstract mixin class _$PlatformComponentCopyWith<$Res> implements $PlatformComponentCopyWith<$Res> {
  factory _$PlatformComponentCopyWith(_PlatformComponent value, $Res Function(_PlatformComponent) _then) = __$PlatformComponentCopyWithImpl;
@override @useResult
$Res call({
 bool oneWay, MovingPlatform? moving
});


@override $MovingPlatformCopyWith<$Res>? get moving;

}
/// @nodoc
class __$PlatformComponentCopyWithImpl<$Res>
    implements _$PlatformComponentCopyWith<$Res> {
  __$PlatformComponentCopyWithImpl(this._self, this._then);

  final _PlatformComponent _self;
  final $Res Function(_PlatformComponent) _then;

/// Create a copy of PlatformComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oneWay = null,Object? moving = freezed,}) {
  return _then(_PlatformComponent(
oneWay: null == oneWay ? _self.oneWay : oneWay // ignore: cast_nullable_to_non_nullable
as bool,moving: freezed == moving ? _self.moving : moving // ignore: cast_nullable_to_non_nullable
as MovingPlatform?,
  ));
}

/// Create a copy of PlatformComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovingPlatformCopyWith<$Res>? get moving {
    if (_self.moving == null) {
    return null;
  }

  return $MovingPlatformCopyWith<$Res>(_self.moving!, (value) {
    return _then(_self.copyWith(moving: value));
  });
}
}


/// @nodoc
mixin _$MovingPlatform {

 double get speed; List<Position> get path;
/// Create a copy of MovingPlatform
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovingPlatformCopyWith<MovingPlatform> get copyWith => _$MovingPlatformCopyWithImpl<MovingPlatform>(this as MovingPlatform, _$identity);

  /// Serializes this MovingPlatform to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovingPlatform&&(identical(other.speed, speed) || other.speed == speed)&&const DeepCollectionEquality().equals(other.path, path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed,const DeepCollectionEquality().hash(path));

@override
String toString() {
  return 'MovingPlatform(speed: $speed, path: $path)';
}


}

/// @nodoc
abstract mixin class $MovingPlatformCopyWith<$Res>  {
  factory $MovingPlatformCopyWith(MovingPlatform value, $Res Function(MovingPlatform) _then) = _$MovingPlatformCopyWithImpl;
@useResult
$Res call({
 double speed, List<Position> path
});




}
/// @nodoc
class _$MovingPlatformCopyWithImpl<$Res>
    implements $MovingPlatformCopyWith<$Res> {
  _$MovingPlatformCopyWithImpl(this._self, this._then);

  final MovingPlatform _self;
  final $Res Function(MovingPlatform) _then;

/// Create a copy of MovingPlatform
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? speed = null,Object? path = null,}) {
  return _then(_self.copyWith(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as List<Position>,
  ));
}

}


/// Adds pattern-matching-related methods to [MovingPlatform].
extension MovingPlatformPatterns on MovingPlatform {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovingPlatform value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovingPlatform() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovingPlatform value)  $default,){
final _that = this;
switch (_that) {
case _MovingPlatform():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovingPlatform value)?  $default,){
final _that = this;
switch (_that) {
case _MovingPlatform() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double speed,  List<Position> path)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovingPlatform() when $default != null:
return $default(_that.speed,_that.path);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double speed,  List<Position> path)  $default,) {final _that = this;
switch (_that) {
case _MovingPlatform():
return $default(_that.speed,_that.path);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double speed,  List<Position> path)?  $default,) {final _that = this;
switch (_that) {
case _MovingPlatform() when $default != null:
return $default(_that.speed,_that.path);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovingPlatform implements MovingPlatform {
  const _MovingPlatform({required this.speed, required final  List<Position> path}): _path = path;
  factory _MovingPlatform.fromJson(Map<String, dynamic> json) => _$MovingPlatformFromJson(json);

@override final  double speed;
 final  List<Position> _path;
@override List<Position> get path {
  if (_path is EqualUnmodifiableListView) return _path;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_path);
}


/// Create a copy of MovingPlatform
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovingPlatformCopyWith<_MovingPlatform> get copyWith => __$MovingPlatformCopyWithImpl<_MovingPlatform>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovingPlatformToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovingPlatform&&(identical(other.speed, speed) || other.speed == speed)&&const DeepCollectionEquality().equals(other._path, _path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed,const DeepCollectionEquality().hash(_path));

@override
String toString() {
  return 'MovingPlatform(speed: $speed, path: $path)';
}


}

/// @nodoc
abstract mixin class _$MovingPlatformCopyWith<$Res> implements $MovingPlatformCopyWith<$Res> {
  factory _$MovingPlatformCopyWith(_MovingPlatform value, $Res Function(_MovingPlatform) _then) = __$MovingPlatformCopyWithImpl;
@override @useResult
$Res call({
 double speed, List<Position> path
});




}
/// @nodoc
class __$MovingPlatformCopyWithImpl<$Res>
    implements _$MovingPlatformCopyWith<$Res> {
  __$MovingPlatformCopyWithImpl(this._self, this._then);

  final _MovingPlatform _self;
  final $Res Function(_MovingPlatform) _then;

/// Create a copy of MovingPlatform
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? speed = null,Object? path = null,}) {
  return _then(_MovingPlatform(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,path: null == path ? _self._path : path // ignore: cast_nullable_to_non_nullable
as List<Position>,
  ));
}


}


/// @nodoc
mixin _$TriggerComponent {

 TriggerEvent get event; bool get once; String? get target;
/// Create a copy of TriggerComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TriggerComponentCopyWith<TriggerComponent> get copyWith => _$TriggerComponentCopyWithImpl<TriggerComponent>(this as TriggerComponent, _$identity);

  /// Serializes this TriggerComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TriggerComponent&&(identical(other.event, event) || other.event == event)&&(identical(other.once, once) || other.once == once)&&(identical(other.target, target) || other.target == target));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,event,once,target);

@override
String toString() {
  return 'TriggerComponent(event: $event, once: $once, target: $target)';
}


}

/// @nodoc
abstract mixin class $TriggerComponentCopyWith<$Res>  {
  factory $TriggerComponentCopyWith(TriggerComponent value, $Res Function(TriggerComponent) _then) = _$TriggerComponentCopyWithImpl;
@useResult
$Res call({
 TriggerEvent event, bool once, String? target
});




}
/// @nodoc
class _$TriggerComponentCopyWithImpl<$Res>
    implements $TriggerComponentCopyWith<$Res> {
  _$TriggerComponentCopyWithImpl(this._self, this._then);

  final TriggerComponent _self;
  final $Res Function(TriggerComponent) _then;

/// Create a copy of TriggerComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? event = null,Object? once = null,Object? target = freezed,}) {
  return _then(_self.copyWith(
event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as TriggerEvent,once: null == once ? _self.once : once // ignore: cast_nullable_to_non_nullable
as bool,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TriggerComponent].
extension TriggerComponentPatterns on TriggerComponent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TriggerComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TriggerComponent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TriggerComponent value)  $default,){
final _that = this;
switch (_that) {
case _TriggerComponent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TriggerComponent value)?  $default,){
final _that = this;
switch (_that) {
case _TriggerComponent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TriggerEvent event,  bool once,  String? target)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TriggerComponent() when $default != null:
return $default(_that.event,_that.once,_that.target);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TriggerEvent event,  bool once,  String? target)  $default,) {final _that = this;
switch (_that) {
case _TriggerComponent():
return $default(_that.event,_that.once,_that.target);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TriggerEvent event,  bool once,  String? target)?  $default,) {final _that = this;
switch (_that) {
case _TriggerComponent() when $default != null:
return $default(_that.event,_that.once,_that.target);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TriggerComponent implements TriggerComponent {
  const _TriggerComponent({required this.event, this.once = false, this.target});
  factory _TriggerComponent.fromJson(Map<String, dynamic> json) => _$TriggerComponentFromJson(json);

@override final  TriggerEvent event;
@override@JsonKey() final  bool once;
@override final  String? target;

/// Create a copy of TriggerComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TriggerComponentCopyWith<_TriggerComponent> get copyWith => __$TriggerComponentCopyWithImpl<_TriggerComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TriggerComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TriggerComponent&&(identical(other.event, event) || other.event == event)&&(identical(other.once, once) || other.once == once)&&(identical(other.target, target) || other.target == target));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,event,once,target);

@override
String toString() {
  return 'TriggerComponent(event: $event, once: $once, target: $target)';
}


}

/// @nodoc
abstract mixin class _$TriggerComponentCopyWith<$Res> implements $TriggerComponentCopyWith<$Res> {
  factory _$TriggerComponentCopyWith(_TriggerComponent value, $Res Function(_TriggerComponent) _then) = __$TriggerComponentCopyWithImpl;
@override @useResult
$Res call({
 TriggerEvent event, bool once, String? target
});




}
/// @nodoc
class __$TriggerComponentCopyWithImpl<$Res>
    implements _$TriggerComponentCopyWith<$Res> {
  __$TriggerComponentCopyWithImpl(this._self, this._then);

  final _TriggerComponent _self;
  final $Res Function(_TriggerComponent) _then;

/// Create a copy of TriggerComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? event = null,Object? once = null,Object? target = freezed,}) {
  return _then(_TriggerComponent(
event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as TriggerEvent,once: null == once ? _self.once : once // ignore: cast_nullable_to_non_nullable
as bool,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Position {

 double get x; double get y;
/// Create a copy of Position
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PositionCopyWith<Position> get copyWith => _$PositionCopyWithImpl<Position>(this as Position, _$identity);

  /// Serializes this Position to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Position&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'Position(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $PositionCopyWith<$Res>  {
  factory $PositionCopyWith(Position value, $Res Function(Position) _then) = _$PositionCopyWithImpl;
@useResult
$Res call({
 double x, double y
});




}
/// @nodoc
class _$PositionCopyWithImpl<$Res>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._self, this._then);

  final Position _self;
  final $Res Function(Position) _then;

/// Create a copy of Position
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Position].
extension PositionPatterns on Position {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Position value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Position() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Position value)  $default,){
final _that = this;
switch (_that) {
case _Position():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Position value)?  $default,){
final _that = this;
switch (_that) {
case _Position() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double x,  double y)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Position() when $default != null:
return $default(_that.x,_that.y);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double x,  double y)  $default,) {final _that = this;
switch (_that) {
case _Position():
return $default(_that.x,_that.y);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double x,  double y)?  $default,) {final _that = this;
switch (_that) {
case _Position() when $default != null:
return $default(_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Position implements Position {
  const _Position({required this.x, required this.y});
  factory _Position.fromJson(Map<String, dynamic> json) => _$PositionFromJson(json);

@override final  double x;
@override final  double y;

/// Create a copy of Position
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PositionCopyWith<_Position> get copyWith => __$PositionCopyWithImpl<_Position>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PositionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Position&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'Position(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$PositionCopyWith<$Res> implements $PositionCopyWith<$Res> {
  factory _$PositionCopyWith(_Position value, $Res Function(_Position) _then) = __$PositionCopyWithImpl;
@override @useResult
$Res call({
 double x, double y
});




}
/// @nodoc
class __$PositionCopyWithImpl<$Res>
    implements _$PositionCopyWith<$Res> {
  __$PositionCopyWithImpl(this._self, this._then);

  final _Position _self;
  final $Res Function(_Position) _then;

/// Create a copy of Position
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,}) {
  return _then(_Position(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
