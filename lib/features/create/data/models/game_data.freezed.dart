// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameData {

 GameMetadata get metadata; GameWorld get world; List<GameEntity> get entities; GameRules? get gameRules; GameUI? get ui;
/// Create a copy of GameData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameDataCopyWith<GameData> get copyWith => _$GameDataCopyWithImpl<GameData>(this as GameData, _$identity);

  /// Serializes this GameData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameData&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.world, world) || other.world == world)&&const DeepCollectionEquality().equals(other.entities, entities)&&(identical(other.gameRules, gameRules) || other.gameRules == gameRules)&&(identical(other.ui, ui) || other.ui == ui));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,world,const DeepCollectionEquality().hash(entities),gameRules,ui);

@override
String toString() {
  return 'GameData(metadata: $metadata, world: $world, entities: $entities, gameRules: $gameRules, ui: $ui)';
}


}

/// @nodoc
abstract mixin class $GameDataCopyWith<$Res>  {
  factory $GameDataCopyWith(GameData value, $Res Function(GameData) _then) = _$GameDataCopyWithImpl;
@useResult
$Res call({
 GameMetadata metadata, GameWorld world, List<GameEntity> entities, GameRules? gameRules, GameUI? ui
});


$GameMetadataCopyWith<$Res> get metadata;$GameWorldCopyWith<$Res> get world;$GameRulesCopyWith<$Res>? get gameRules;$GameUICopyWith<$Res>? get ui;

}
/// @nodoc
class _$GameDataCopyWithImpl<$Res>
    implements $GameDataCopyWith<$Res> {
  _$GameDataCopyWithImpl(this._self, this._then);

  final GameData _self;
  final $Res Function(GameData) _then;

/// Create a copy of GameData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? world = null,Object? entities = null,Object? gameRules = freezed,Object? ui = freezed,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as GameMetadata,world: null == world ? _self.world : world // ignore: cast_nullable_to_non_nullable
as GameWorld,entities: null == entities ? _self.entities : entities // ignore: cast_nullable_to_non_nullable
as List<GameEntity>,gameRules: freezed == gameRules ? _self.gameRules : gameRules // ignore: cast_nullable_to_non_nullable
as GameRules?,ui: freezed == ui ? _self.ui : ui // ignore: cast_nullable_to_non_nullable
as GameUI?,
  ));
}
/// Create a copy of GameData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameMetadataCopyWith<$Res> get metadata {
  
  return $GameMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}/// Create a copy of GameData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameWorldCopyWith<$Res> get world {
  
  return $GameWorldCopyWith<$Res>(_self.world, (value) {
    return _then(_self.copyWith(world: value));
  });
}/// Create a copy of GameData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameRulesCopyWith<$Res>? get gameRules {
    if (_self.gameRules == null) {
    return null;
  }

  return $GameRulesCopyWith<$Res>(_self.gameRules!, (value) {
    return _then(_self.copyWith(gameRules: value));
  });
}/// Create a copy of GameData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameUICopyWith<$Res>? get ui {
    if (_self.ui == null) {
    return null;
  }

  return $GameUICopyWith<$Res>(_self.ui!, (value) {
    return _then(_self.copyWith(ui: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameData].
extension GameDataPatterns on GameData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameData value)  $default,){
final _that = this;
switch (_that) {
case _GameData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameData value)?  $default,){
final _that = this;
switch (_that) {
case _GameData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GameMetadata metadata,  GameWorld world,  List<GameEntity> entities,  GameRules? gameRules,  GameUI? ui)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameData() when $default != null:
return $default(_that.metadata,_that.world,_that.entities,_that.gameRules,_that.ui);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GameMetadata metadata,  GameWorld world,  List<GameEntity> entities,  GameRules? gameRules,  GameUI? ui)  $default,) {final _that = this;
switch (_that) {
case _GameData():
return $default(_that.metadata,_that.world,_that.entities,_that.gameRules,_that.ui);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GameMetadata metadata,  GameWorld world,  List<GameEntity> entities,  GameRules? gameRules,  GameUI? ui)?  $default,) {final _that = this;
switch (_that) {
case _GameData() when $default != null:
return $default(_that.metadata,_that.world,_that.entities,_that.gameRules,_that.ui);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameData implements GameData {
   _GameData({required this.metadata, required this.world, required final  List<GameEntity> entities, this.gameRules, this.ui}): _entities = entities;
  factory _GameData.fromJson(Map<String, dynamic> json) => _$GameDataFromJson(json);

@override final  GameMetadata metadata;
@override final  GameWorld world;
 final  List<GameEntity> _entities;
@override List<GameEntity> get entities {
  if (_entities is EqualUnmodifiableListView) return _entities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entities);
}

@override final  GameRules? gameRules;
@override final  GameUI? ui;

/// Create a copy of GameData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameDataCopyWith<_GameData> get copyWith => __$GameDataCopyWithImpl<_GameData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameData&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.world, world) || other.world == world)&&const DeepCollectionEquality().equals(other._entities, _entities)&&(identical(other.gameRules, gameRules) || other.gameRules == gameRules)&&(identical(other.ui, ui) || other.ui == ui));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,world,const DeepCollectionEquality().hash(_entities),gameRules,ui);

@override
String toString() {
  return 'GameData(metadata: $metadata, world: $world, entities: $entities, gameRules: $gameRules, ui: $ui)';
}


}

/// @nodoc
abstract mixin class _$GameDataCopyWith<$Res> implements $GameDataCopyWith<$Res> {
  factory _$GameDataCopyWith(_GameData value, $Res Function(_GameData) _then) = __$GameDataCopyWithImpl;
@override @useResult
$Res call({
 GameMetadata metadata, GameWorld world, List<GameEntity> entities, GameRules? gameRules, GameUI? ui
});


@override $GameMetadataCopyWith<$Res> get metadata;@override $GameWorldCopyWith<$Res> get world;@override $GameRulesCopyWith<$Res>? get gameRules;@override $GameUICopyWith<$Res>? get ui;

}
/// @nodoc
class __$GameDataCopyWithImpl<$Res>
    implements _$GameDataCopyWith<$Res> {
  __$GameDataCopyWithImpl(this._self, this._then);

  final _GameData _self;
  final $Res Function(_GameData) _then;

/// Create a copy of GameData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? world = null,Object? entities = null,Object? gameRules = freezed,Object? ui = freezed,}) {
  return _then(_GameData(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as GameMetadata,world: null == world ? _self.world : world // ignore: cast_nullable_to_non_nullable
as GameWorld,entities: null == entities ? _self._entities : entities // ignore: cast_nullable_to_non_nullable
as List<GameEntity>,gameRules: freezed == gameRules ? _self.gameRules : gameRules // ignore: cast_nullable_to_non_nullable
as GameRules?,ui: freezed == ui ? _self.ui : ui // ignore: cast_nullable_to_non_nullable
as GameUI?,
  ));
}

/// Create a copy of GameData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameMetadataCopyWith<$Res> get metadata {
  
  return $GameMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}/// Create a copy of GameData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameWorldCopyWith<$Res> get world {
  
  return $GameWorldCopyWith<$Res>(_self.world, (value) {
    return _then(_self.copyWith(world: value));
  });
}/// Create a copy of GameData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameRulesCopyWith<$Res>? get gameRules {
    if (_self.gameRules == null) {
    return null;
  }

  return $GameRulesCopyWith<$Res>(_self.gameRules!, (value) {
    return _then(_self.copyWith(gameRules: value));
  });
}/// Create a copy of GameData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameUICopyWith<$Res>? get ui {
    if (_self.ui == null) {
    return null;
  }

  return $GameUICopyWith<$Res>(_self.ui!, (value) {
    return _then(_self.copyWith(ui: value));
  });
}
}


/// @nodoc
mixin _$GameMetadata {

 String get title; String? get description; String get version;
/// Create a copy of GameMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameMetadataCopyWith<GameMetadata> get copyWith => _$GameMetadataCopyWithImpl<GameMetadata>(this as GameMetadata, _$identity);

  /// Serializes this GameMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameMetadata&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,version);

@override
String toString() {
  return 'GameMetadata(title: $title, description: $description, version: $version)';
}


}

/// @nodoc
abstract mixin class $GameMetadataCopyWith<$Res>  {
  factory $GameMetadataCopyWith(GameMetadata value, $Res Function(GameMetadata) _then) = _$GameMetadataCopyWithImpl;
@useResult
$Res call({
 String title, String? description, String version
});




}
/// @nodoc
class _$GameMetadataCopyWithImpl<$Res>
    implements $GameMetadataCopyWith<$Res> {
  _$GameMetadataCopyWithImpl(this._self, this._then);

  final GameMetadata _self;
  final $Res Function(GameMetadata) _then;

/// Create a copy of GameMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,Object? version = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GameMetadata].
extension GameMetadataPatterns on GameMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameMetadata value)  $default,){
final _that = this;
switch (_that) {
case _GameMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _GameMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? description,  String version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameMetadata() when $default != null:
return $default(_that.title,_that.description,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? description,  String version)  $default,) {final _that = this;
switch (_that) {
case _GameMetadata():
return $default(_that.title,_that.description,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? description,  String version)?  $default,) {final _that = this;
switch (_that) {
case _GameMetadata() when $default != null:
return $default(_that.title,_that.description,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameMetadata implements GameMetadata {
  const _GameMetadata({required this.title, this.description, this.version = '1.0'});
  factory _GameMetadata.fromJson(Map<String, dynamic> json) => _$GameMetadataFromJson(json);

@override final  String title;
@override final  String? description;
@override@JsonKey() final  String version;

/// Create a copy of GameMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameMetadataCopyWith<_GameMetadata> get copyWith => __$GameMetadataCopyWithImpl<_GameMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameMetadata&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,version);

@override
String toString() {
  return 'GameMetadata(title: $title, description: $description, version: $version)';
}


}

/// @nodoc
abstract mixin class _$GameMetadataCopyWith<$Res> implements $GameMetadataCopyWith<$Res> {
  factory _$GameMetadataCopyWith(_GameMetadata value, $Res Function(_GameMetadata) _then) = __$GameMetadataCopyWithImpl;
@override @useResult
$Res call({
 String title, String? description, String version
});




}
/// @nodoc
class __$GameMetadataCopyWithImpl<$Res>
    implements _$GameMetadataCopyWith<$Res> {
  __$GameMetadataCopyWithImpl(this._self, this._then);

  final _GameMetadata _self;
  final $Res Function(_GameMetadata) _then;

/// Create a copy of GameMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,Object? version = null,}) {
  return _then(_GameMetadata(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GameWorld {

 GameOrientation get orientation; WorldBounds? get bounds; WorldGravity? get gravity; WorldBackground? get background; WorldCamera? get camera; String? get audio;
/// Create a copy of GameWorld
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameWorldCopyWith<GameWorld> get copyWith => _$GameWorldCopyWithImpl<GameWorld>(this as GameWorld, _$identity);

  /// Serializes this GameWorld to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameWorld&&(identical(other.orientation, orientation) || other.orientation == orientation)&&(identical(other.bounds, bounds) || other.bounds == bounds)&&(identical(other.gravity, gravity) || other.gravity == gravity)&&(identical(other.background, background) || other.background == background)&&(identical(other.camera, camera) || other.camera == camera)&&(identical(other.audio, audio) || other.audio == audio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orientation,bounds,gravity,background,camera,audio);

@override
String toString() {
  return 'GameWorld(orientation: $orientation, bounds: $bounds, gravity: $gravity, background: $background, camera: $camera, audio: $audio)';
}


}

/// @nodoc
abstract mixin class $GameWorldCopyWith<$Res>  {
  factory $GameWorldCopyWith(GameWorld value, $Res Function(GameWorld) _then) = _$GameWorldCopyWithImpl;
@useResult
$Res call({
 GameOrientation orientation, WorldBounds? bounds, WorldGravity? gravity, WorldBackground? background, WorldCamera? camera, String? audio
});


$WorldBoundsCopyWith<$Res>? get bounds;$WorldGravityCopyWith<$Res>? get gravity;$WorldBackgroundCopyWith<$Res>? get background;$WorldCameraCopyWith<$Res>? get camera;

}
/// @nodoc
class _$GameWorldCopyWithImpl<$Res>
    implements $GameWorldCopyWith<$Res> {
  _$GameWorldCopyWithImpl(this._self, this._then);

  final GameWorld _self;
  final $Res Function(GameWorld) _then;

/// Create a copy of GameWorld
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orientation = null,Object? bounds = freezed,Object? gravity = freezed,Object? background = freezed,Object? camera = freezed,Object? audio = freezed,}) {
  return _then(_self.copyWith(
orientation: null == orientation ? _self.orientation : orientation // ignore: cast_nullable_to_non_nullable
as GameOrientation,bounds: freezed == bounds ? _self.bounds : bounds // ignore: cast_nullable_to_non_nullable
as WorldBounds?,gravity: freezed == gravity ? _self.gravity : gravity // ignore: cast_nullable_to_non_nullable
as WorldGravity?,background: freezed == background ? _self.background : background // ignore: cast_nullable_to_non_nullable
as WorldBackground?,camera: freezed == camera ? _self.camera : camera // ignore: cast_nullable_to_non_nullable
as WorldCamera?,audio: freezed == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GameWorld
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldBoundsCopyWith<$Res>? get bounds {
    if (_self.bounds == null) {
    return null;
  }

  return $WorldBoundsCopyWith<$Res>(_self.bounds!, (value) {
    return _then(_self.copyWith(bounds: value));
  });
}/// Create a copy of GameWorld
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldGravityCopyWith<$Res>? get gravity {
    if (_self.gravity == null) {
    return null;
  }

  return $WorldGravityCopyWith<$Res>(_self.gravity!, (value) {
    return _then(_self.copyWith(gravity: value));
  });
}/// Create a copy of GameWorld
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldBackgroundCopyWith<$Res>? get background {
    if (_self.background == null) {
    return null;
  }

  return $WorldBackgroundCopyWith<$Res>(_self.background!, (value) {
    return _then(_self.copyWith(background: value));
  });
}/// Create a copy of GameWorld
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldCameraCopyWith<$Res>? get camera {
    if (_self.camera == null) {
    return null;
  }

  return $WorldCameraCopyWith<$Res>(_self.camera!, (value) {
    return _then(_self.copyWith(camera: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameWorld].
extension GameWorldPatterns on GameWorld {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameWorld value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameWorld() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameWorld value)  $default,){
final _that = this;
switch (_that) {
case _GameWorld():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameWorld value)?  $default,){
final _that = this;
switch (_that) {
case _GameWorld() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GameOrientation orientation,  WorldBounds? bounds,  WorldGravity? gravity,  WorldBackground? background,  WorldCamera? camera,  String? audio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameWorld() when $default != null:
return $default(_that.orientation,_that.bounds,_that.gravity,_that.background,_that.camera,_that.audio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GameOrientation orientation,  WorldBounds? bounds,  WorldGravity? gravity,  WorldBackground? background,  WorldCamera? camera,  String? audio)  $default,) {final _that = this;
switch (_that) {
case _GameWorld():
return $default(_that.orientation,_that.bounds,_that.gravity,_that.background,_that.camera,_that.audio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GameOrientation orientation,  WorldBounds? bounds,  WorldGravity? gravity,  WorldBackground? background,  WorldCamera? camera,  String? audio)?  $default,) {final _that = this;
switch (_that) {
case _GameWorld() when $default != null:
return $default(_that.orientation,_that.bounds,_that.gravity,_that.background,_that.camera,_that.audio);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameWorld implements GameWorld {
  const _GameWorld({this.orientation = GameOrientation.landscape, this.bounds, this.gravity, this.background, this.camera, this.audio});
  factory _GameWorld.fromJson(Map<String, dynamic> json) => _$GameWorldFromJson(json);

@override@JsonKey() final  GameOrientation orientation;
@override final  WorldBounds? bounds;
@override final  WorldGravity? gravity;
@override final  WorldBackground? background;
@override final  WorldCamera? camera;
@override final  String? audio;

/// Create a copy of GameWorld
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameWorldCopyWith<_GameWorld> get copyWith => __$GameWorldCopyWithImpl<_GameWorld>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameWorldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameWorld&&(identical(other.orientation, orientation) || other.orientation == orientation)&&(identical(other.bounds, bounds) || other.bounds == bounds)&&(identical(other.gravity, gravity) || other.gravity == gravity)&&(identical(other.background, background) || other.background == background)&&(identical(other.camera, camera) || other.camera == camera)&&(identical(other.audio, audio) || other.audio == audio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orientation,bounds,gravity,background,camera,audio);

@override
String toString() {
  return 'GameWorld(orientation: $orientation, bounds: $bounds, gravity: $gravity, background: $background, camera: $camera, audio: $audio)';
}


}

/// @nodoc
abstract mixin class _$GameWorldCopyWith<$Res> implements $GameWorldCopyWith<$Res> {
  factory _$GameWorldCopyWith(_GameWorld value, $Res Function(_GameWorld) _then) = __$GameWorldCopyWithImpl;
@override @useResult
$Res call({
 GameOrientation orientation, WorldBounds? bounds, WorldGravity? gravity, WorldBackground? background, WorldCamera? camera, String? audio
});


@override $WorldBoundsCopyWith<$Res>? get bounds;@override $WorldGravityCopyWith<$Res>? get gravity;@override $WorldBackgroundCopyWith<$Res>? get background;@override $WorldCameraCopyWith<$Res>? get camera;

}
/// @nodoc
class __$GameWorldCopyWithImpl<$Res>
    implements _$GameWorldCopyWith<$Res> {
  __$GameWorldCopyWithImpl(this._self, this._then);

  final _GameWorld _self;
  final $Res Function(_GameWorld) _then;

/// Create a copy of GameWorld
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orientation = null,Object? bounds = freezed,Object? gravity = freezed,Object? background = freezed,Object? camera = freezed,Object? audio = freezed,}) {
  return _then(_GameWorld(
orientation: null == orientation ? _self.orientation : orientation // ignore: cast_nullable_to_non_nullable
as GameOrientation,bounds: freezed == bounds ? _self.bounds : bounds // ignore: cast_nullable_to_non_nullable
as WorldBounds?,gravity: freezed == gravity ? _self.gravity : gravity // ignore: cast_nullable_to_non_nullable
as WorldGravity?,background: freezed == background ? _self.background : background // ignore: cast_nullable_to_non_nullable
as WorldBackground?,camera: freezed == camera ? _self.camera : camera // ignore: cast_nullable_to_non_nullable
as WorldCamera?,audio: freezed == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GameWorld
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldBoundsCopyWith<$Res>? get bounds {
    if (_self.bounds == null) {
    return null;
  }

  return $WorldBoundsCopyWith<$Res>(_self.bounds!, (value) {
    return _then(_self.copyWith(bounds: value));
  });
}/// Create a copy of GameWorld
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldGravityCopyWith<$Res>? get gravity {
    if (_self.gravity == null) {
    return null;
  }

  return $WorldGravityCopyWith<$Res>(_self.gravity!, (value) {
    return _then(_self.copyWith(gravity: value));
  });
}/// Create a copy of GameWorld
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldBackgroundCopyWith<$Res>? get background {
    if (_self.background == null) {
    return null;
  }

  return $WorldBackgroundCopyWith<$Res>(_self.background!, (value) {
    return _then(_self.copyWith(background: value));
  });
}/// Create a copy of GameWorld
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldCameraCopyWith<$Res>? get camera {
    if (_self.camera == null) {
    return null;
  }

  return $WorldCameraCopyWith<$Res>(_self.camera!, (value) {
    return _then(_self.copyWith(camera: value));
  });
}
}


/// @nodoc
mixin _$WorldBounds {

 double get width; double get height; bool get autoScale;
/// Create a copy of WorldBounds
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorldBoundsCopyWith<WorldBounds> get copyWith => _$WorldBoundsCopyWithImpl<WorldBounds>(this as WorldBounds, _$identity);

  /// Serializes this WorldBounds to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorldBounds&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.autoScale, autoScale) || other.autoScale == autoScale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,autoScale);

@override
String toString() {
  return 'WorldBounds(width: $width, height: $height, autoScale: $autoScale)';
}


}

/// @nodoc
abstract mixin class $WorldBoundsCopyWith<$Res>  {
  factory $WorldBoundsCopyWith(WorldBounds value, $Res Function(WorldBounds) _then) = _$WorldBoundsCopyWithImpl;
@useResult
$Res call({
 double width, double height, bool autoScale
});




}
/// @nodoc
class _$WorldBoundsCopyWithImpl<$Res>
    implements $WorldBoundsCopyWith<$Res> {
  _$WorldBoundsCopyWithImpl(this._self, this._then);

  final WorldBounds _self;
  final $Res Function(WorldBounds) _then;

/// Create a copy of WorldBounds
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? width = null,Object? height = null,Object? autoScale = null,}) {
  return _then(_self.copyWith(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,autoScale: null == autoScale ? _self.autoScale : autoScale // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WorldBounds].
extension WorldBoundsPatterns on WorldBounds {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorldBounds value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorldBounds() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorldBounds value)  $default,){
final _that = this;
switch (_that) {
case _WorldBounds():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorldBounds value)?  $default,){
final _that = this;
switch (_that) {
case _WorldBounds() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double width,  double height,  bool autoScale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorldBounds() when $default != null:
return $default(_that.width,_that.height,_that.autoScale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double width,  double height,  bool autoScale)  $default,) {final _that = this;
switch (_that) {
case _WorldBounds():
return $default(_that.width,_that.height,_that.autoScale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double width,  double height,  bool autoScale)?  $default,) {final _that = this;
switch (_that) {
case _WorldBounds() when $default != null:
return $default(_that.width,_that.height,_that.autoScale);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorldBounds implements WorldBounds {
  const _WorldBounds({this.width = 1200.0, this.height = 800.0, this.autoScale = true});
  factory _WorldBounds.fromJson(Map<String, dynamic> json) => _$WorldBoundsFromJson(json);

@override@JsonKey() final  double width;
@override@JsonKey() final  double height;
@override@JsonKey() final  bool autoScale;

/// Create a copy of WorldBounds
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorldBoundsCopyWith<_WorldBounds> get copyWith => __$WorldBoundsCopyWithImpl<_WorldBounds>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorldBoundsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorldBounds&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.autoScale, autoScale) || other.autoScale == autoScale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,autoScale);

@override
String toString() {
  return 'WorldBounds(width: $width, height: $height, autoScale: $autoScale)';
}


}

/// @nodoc
abstract mixin class _$WorldBoundsCopyWith<$Res> implements $WorldBoundsCopyWith<$Res> {
  factory _$WorldBoundsCopyWith(_WorldBounds value, $Res Function(_WorldBounds) _then) = __$WorldBoundsCopyWithImpl;
@override @useResult
$Res call({
 double width, double height, bool autoScale
});




}
/// @nodoc
class __$WorldBoundsCopyWithImpl<$Res>
    implements _$WorldBoundsCopyWith<$Res> {
  __$WorldBoundsCopyWithImpl(this._self, this._then);

  final _WorldBounds _self;
  final $Res Function(_WorldBounds) _then;

/// Create a copy of WorldBounds
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? width = null,Object? height = null,Object? autoScale = null,}) {
  return _then(_WorldBounds(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,autoScale: null == autoScale ? _self.autoScale : autoScale // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$WorldGravity {

 double get x; double get y;
/// Create a copy of WorldGravity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorldGravityCopyWith<WorldGravity> get copyWith => _$WorldGravityCopyWithImpl<WorldGravity>(this as WorldGravity, _$identity);

  /// Serializes this WorldGravity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorldGravity&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'WorldGravity(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $WorldGravityCopyWith<$Res>  {
  factory $WorldGravityCopyWith(WorldGravity value, $Res Function(WorldGravity) _then) = _$WorldGravityCopyWithImpl;
@useResult
$Res call({
 double x, double y
});




}
/// @nodoc
class _$WorldGravityCopyWithImpl<$Res>
    implements $WorldGravityCopyWith<$Res> {
  _$WorldGravityCopyWithImpl(this._self, this._then);

  final WorldGravity _self;
  final $Res Function(WorldGravity) _then;

/// Create a copy of WorldGravity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [WorldGravity].
extension WorldGravityPatterns on WorldGravity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorldGravity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorldGravity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorldGravity value)  $default,){
final _that = this;
switch (_that) {
case _WorldGravity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorldGravity value)?  $default,){
final _that = this;
switch (_that) {
case _WorldGravity() when $default != null:
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
case _WorldGravity() when $default != null:
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
case _WorldGravity():
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
case _WorldGravity() when $default != null:
return $default(_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorldGravity implements WorldGravity {
  const _WorldGravity({this.x = 0.0, this.y = 980.0});
  factory _WorldGravity.fromJson(Map<String, dynamic> json) => _$WorldGravityFromJson(json);

@override@JsonKey() final  double x;
@override@JsonKey() final  double y;

/// Create a copy of WorldGravity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorldGravityCopyWith<_WorldGravity> get copyWith => __$WorldGravityCopyWithImpl<_WorldGravity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorldGravityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorldGravity&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'WorldGravity(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$WorldGravityCopyWith<$Res> implements $WorldGravityCopyWith<$Res> {
  factory _$WorldGravityCopyWith(_WorldGravity value, $Res Function(_WorldGravity) _then) = __$WorldGravityCopyWithImpl;
@override @useResult
$Res call({
 double x, double y
});




}
/// @nodoc
class __$WorldGravityCopyWithImpl<$Res>
    implements _$WorldGravityCopyWith<$Res> {
  __$WorldGravityCopyWithImpl(this._self, this._then);

  final _WorldGravity _self;
  final $Res Function(_WorldGravity) _then;

/// Create a copy of WorldGravity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,}) {
  return _then(_WorldGravity(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$WorldBackground {

 String? get color; String? get asset; bool get parallax;
/// Create a copy of WorldBackground
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorldBackgroundCopyWith<WorldBackground> get copyWith => _$WorldBackgroundCopyWithImpl<WorldBackground>(this as WorldBackground, _$identity);

  /// Serializes this WorldBackground to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorldBackground&&(identical(other.color, color) || other.color == color)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.parallax, parallax) || other.parallax == parallax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color,asset,parallax);

@override
String toString() {
  return 'WorldBackground(color: $color, asset: $asset, parallax: $parallax)';
}


}

/// @nodoc
abstract mixin class $WorldBackgroundCopyWith<$Res>  {
  factory $WorldBackgroundCopyWith(WorldBackground value, $Res Function(WorldBackground) _then) = _$WorldBackgroundCopyWithImpl;
@useResult
$Res call({
 String? color, String? asset, bool parallax
});




}
/// @nodoc
class _$WorldBackgroundCopyWithImpl<$Res>
    implements $WorldBackgroundCopyWith<$Res> {
  _$WorldBackgroundCopyWithImpl(this._self, this._then);

  final WorldBackground _self;
  final $Res Function(WorldBackground) _then;

/// Create a copy of WorldBackground
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? color = freezed,Object? asset = freezed,Object? parallax = null,}) {
  return _then(_self.copyWith(
color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as String?,parallax: null == parallax ? _self.parallax : parallax // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WorldBackground].
extension WorldBackgroundPatterns on WorldBackground {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorldBackground value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorldBackground() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorldBackground value)  $default,){
final _that = this;
switch (_that) {
case _WorldBackground():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorldBackground value)?  $default,){
final _that = this;
switch (_that) {
case _WorldBackground() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? color,  String? asset,  bool parallax)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorldBackground() when $default != null:
return $default(_that.color,_that.asset,_that.parallax);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? color,  String? asset,  bool parallax)  $default,) {final _that = this;
switch (_that) {
case _WorldBackground():
return $default(_that.color,_that.asset,_that.parallax);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? color,  String? asset,  bool parallax)?  $default,) {final _that = this;
switch (_that) {
case _WorldBackground() when $default != null:
return $default(_that.color,_that.asset,_that.parallax);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorldBackground implements WorldBackground {
  const _WorldBackground({this.color, this.asset, this.parallax = false});
  factory _WorldBackground.fromJson(Map<String, dynamic> json) => _$WorldBackgroundFromJson(json);

@override final  String? color;
@override final  String? asset;
@override@JsonKey() final  bool parallax;

/// Create a copy of WorldBackground
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorldBackgroundCopyWith<_WorldBackground> get copyWith => __$WorldBackgroundCopyWithImpl<_WorldBackground>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorldBackgroundToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorldBackground&&(identical(other.color, color) || other.color == color)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.parallax, parallax) || other.parallax == parallax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color,asset,parallax);

@override
String toString() {
  return 'WorldBackground(color: $color, asset: $asset, parallax: $parallax)';
}


}

/// @nodoc
abstract mixin class _$WorldBackgroundCopyWith<$Res> implements $WorldBackgroundCopyWith<$Res> {
  factory _$WorldBackgroundCopyWith(_WorldBackground value, $Res Function(_WorldBackground) _then) = __$WorldBackgroundCopyWithImpl;
@override @useResult
$Res call({
 String? color, String? asset, bool parallax
});




}
/// @nodoc
class __$WorldBackgroundCopyWithImpl<$Res>
    implements _$WorldBackgroundCopyWith<$Res> {
  __$WorldBackgroundCopyWithImpl(this._self, this._then);

  final _WorldBackground _self;
  final $Res Function(_WorldBackground) _then;

/// Create a copy of WorldBackground
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? color = freezed,Object? asset = freezed,Object? parallax = null,}) {
  return _then(_WorldBackground(
color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as String?,parallax: null == parallax ? _self.parallax : parallax // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$WorldCamera {

 bool get followPlayer; CameraBounds? get bounds;
/// Create a copy of WorldCamera
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorldCameraCopyWith<WorldCamera> get copyWith => _$WorldCameraCopyWithImpl<WorldCamera>(this as WorldCamera, _$identity);

  /// Serializes this WorldCamera to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorldCamera&&(identical(other.followPlayer, followPlayer) || other.followPlayer == followPlayer)&&(identical(other.bounds, bounds) || other.bounds == bounds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,followPlayer,bounds);

@override
String toString() {
  return 'WorldCamera(followPlayer: $followPlayer, bounds: $bounds)';
}


}

/// @nodoc
abstract mixin class $WorldCameraCopyWith<$Res>  {
  factory $WorldCameraCopyWith(WorldCamera value, $Res Function(WorldCamera) _then) = _$WorldCameraCopyWithImpl;
@useResult
$Res call({
 bool followPlayer, CameraBounds? bounds
});


$CameraBoundsCopyWith<$Res>? get bounds;

}
/// @nodoc
class _$WorldCameraCopyWithImpl<$Res>
    implements $WorldCameraCopyWith<$Res> {
  _$WorldCameraCopyWithImpl(this._self, this._then);

  final WorldCamera _self;
  final $Res Function(WorldCamera) _then;

/// Create a copy of WorldCamera
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? followPlayer = null,Object? bounds = freezed,}) {
  return _then(_self.copyWith(
followPlayer: null == followPlayer ? _self.followPlayer : followPlayer // ignore: cast_nullable_to_non_nullable
as bool,bounds: freezed == bounds ? _self.bounds : bounds // ignore: cast_nullable_to_non_nullable
as CameraBounds?,
  ));
}
/// Create a copy of WorldCamera
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CameraBoundsCopyWith<$Res>? get bounds {
    if (_self.bounds == null) {
    return null;
  }

  return $CameraBoundsCopyWith<$Res>(_self.bounds!, (value) {
    return _then(_self.copyWith(bounds: value));
  });
}
}


/// Adds pattern-matching-related methods to [WorldCamera].
extension WorldCameraPatterns on WorldCamera {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorldCamera value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorldCamera() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorldCamera value)  $default,){
final _that = this;
switch (_that) {
case _WorldCamera():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorldCamera value)?  $default,){
final _that = this;
switch (_that) {
case _WorldCamera() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool followPlayer,  CameraBounds? bounds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorldCamera() when $default != null:
return $default(_that.followPlayer,_that.bounds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool followPlayer,  CameraBounds? bounds)  $default,) {final _that = this;
switch (_that) {
case _WorldCamera():
return $default(_that.followPlayer,_that.bounds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool followPlayer,  CameraBounds? bounds)?  $default,) {final _that = this;
switch (_that) {
case _WorldCamera() when $default != null:
return $default(_that.followPlayer,_that.bounds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorldCamera implements WorldCamera {
  const _WorldCamera({this.followPlayer = true, this.bounds});
  factory _WorldCamera.fromJson(Map<String, dynamic> json) => _$WorldCameraFromJson(json);

@override@JsonKey() final  bool followPlayer;
@override final  CameraBounds? bounds;

/// Create a copy of WorldCamera
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorldCameraCopyWith<_WorldCamera> get copyWith => __$WorldCameraCopyWithImpl<_WorldCamera>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorldCameraToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorldCamera&&(identical(other.followPlayer, followPlayer) || other.followPlayer == followPlayer)&&(identical(other.bounds, bounds) || other.bounds == bounds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,followPlayer,bounds);

@override
String toString() {
  return 'WorldCamera(followPlayer: $followPlayer, bounds: $bounds)';
}


}

/// @nodoc
abstract mixin class _$WorldCameraCopyWith<$Res> implements $WorldCameraCopyWith<$Res> {
  factory _$WorldCameraCopyWith(_WorldCamera value, $Res Function(_WorldCamera) _then) = __$WorldCameraCopyWithImpl;
@override @useResult
$Res call({
 bool followPlayer, CameraBounds? bounds
});


@override $CameraBoundsCopyWith<$Res>? get bounds;

}
/// @nodoc
class __$WorldCameraCopyWithImpl<$Res>
    implements _$WorldCameraCopyWith<$Res> {
  __$WorldCameraCopyWithImpl(this._self, this._then);

  final _WorldCamera _self;
  final $Res Function(_WorldCamera) _then;

/// Create a copy of WorldCamera
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? followPlayer = null,Object? bounds = freezed,}) {
  return _then(_WorldCamera(
followPlayer: null == followPlayer ? _self.followPlayer : followPlayer // ignore: cast_nullable_to_non_nullable
as bool,bounds: freezed == bounds ? _self.bounds : bounds // ignore: cast_nullable_to_non_nullable
as CameraBounds?,
  ));
}

/// Create a copy of WorldCamera
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CameraBoundsCopyWith<$Res>? get bounds {
    if (_self.bounds == null) {
    return null;
  }

  return $CameraBoundsCopyWith<$Res>(_self.bounds!, (value) {
    return _then(_self.copyWith(bounds: value));
  });
}
}


/// @nodoc
mixin _$CameraBounds {

 double get x; double get y; double get width; double get height;
/// Create a copy of CameraBounds
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraBoundsCopyWith<CameraBounds> get copyWith => _$CameraBoundsCopyWithImpl<CameraBounds>(this as CameraBounds, _$identity);

  /// Serializes this CameraBounds to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraBounds&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,width,height);

@override
String toString() {
  return 'CameraBounds(x: $x, y: $y, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class $CameraBoundsCopyWith<$Res>  {
  factory $CameraBoundsCopyWith(CameraBounds value, $Res Function(CameraBounds) _then) = _$CameraBoundsCopyWithImpl;
@useResult
$Res call({
 double x, double y, double width, double height
});




}
/// @nodoc
class _$CameraBoundsCopyWithImpl<$Res>
    implements $CameraBoundsCopyWith<$Res> {
  _$CameraBoundsCopyWithImpl(this._self, this._then);

  final CameraBounds _self;
  final $Res Function(CameraBounds) _then;

/// Create a copy of CameraBounds
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,Object? width = null,Object? height = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CameraBounds].
extension CameraBoundsPatterns on CameraBounds {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CameraBounds value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CameraBounds() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CameraBounds value)  $default,){
final _that = this;
switch (_that) {
case _CameraBounds():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CameraBounds value)?  $default,){
final _that = this;
switch (_that) {
case _CameraBounds() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double x,  double y,  double width,  double height)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CameraBounds() when $default != null:
return $default(_that.x,_that.y,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double x,  double y,  double width,  double height)  $default,) {final _that = this;
switch (_that) {
case _CameraBounds():
return $default(_that.x,_that.y,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double x,  double y,  double width,  double height)?  $default,) {final _that = this;
switch (_that) {
case _CameraBounds() when $default != null:
return $default(_that.x,_that.y,_that.width,_that.height);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CameraBounds implements CameraBounds {
  const _CameraBounds({required this.x, required this.y, required this.width, required this.height});
  factory _CameraBounds.fromJson(Map<String, dynamic> json) => _$CameraBoundsFromJson(json);

@override final  double x;
@override final  double y;
@override final  double width;
@override final  double height;

/// Create a copy of CameraBounds
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CameraBoundsCopyWith<_CameraBounds> get copyWith => __$CameraBoundsCopyWithImpl<_CameraBounds>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CameraBoundsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CameraBounds&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,width,height);

@override
String toString() {
  return 'CameraBounds(x: $x, y: $y, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class _$CameraBoundsCopyWith<$Res> implements $CameraBoundsCopyWith<$Res> {
  factory _$CameraBoundsCopyWith(_CameraBounds value, $Res Function(_CameraBounds) _then) = __$CameraBoundsCopyWithImpl;
@override @useResult
$Res call({
 double x, double y, double width, double height
});




}
/// @nodoc
class __$CameraBoundsCopyWithImpl<$Res>
    implements _$CameraBoundsCopyWith<$Res> {
  __$CameraBoundsCopyWithImpl(this._self, this._then);

  final _CameraBounds _self;
  final $Res Function(_CameraBounds) _then;

/// Create a copy of CameraBounds
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,Object? width = null,Object? height = null,}) {
  return _then(_CameraBounds(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$GameEntity {

 String get id; List<String> get tags; EntityComponents get components;
/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameEntityCopyWith<GameEntity> get copyWith => _$GameEntityCopyWithImpl<GameEntity>(this as GameEntity, _$identity);

  /// Serializes this GameEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.components, components) || other.components == components));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(tags),components);

@override
String toString() {
  return 'GameEntity(id: $id, tags: $tags, components: $components)';
}


}

/// @nodoc
abstract mixin class $GameEntityCopyWith<$Res>  {
  factory $GameEntityCopyWith(GameEntity value, $Res Function(GameEntity) _then) = _$GameEntityCopyWithImpl;
@useResult
$Res call({
 String id, List<String> tags, EntityComponents components
});


$EntityComponentsCopyWith<$Res> get components;

}
/// @nodoc
class _$GameEntityCopyWithImpl<$Res>
    implements $GameEntityCopyWith<$Res> {
  _$GameEntityCopyWithImpl(this._self, this._then);

  final GameEntity _self;
  final $Res Function(GameEntity) _then;

/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tags = null,Object? components = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,components: null == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as EntityComponents,
  ));
}
/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityComponentsCopyWith<$Res> get components {
  
  return $EntityComponentsCopyWith<$Res>(_self.components, (value) {
    return _then(_self.copyWith(components: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameEntity].
extension GameEntityPatterns on GameEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameEntity value)  $default,){
final _that = this;
switch (_that) {
case _GameEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameEntity value)?  $default,){
final _that = this;
switch (_that) {
case _GameEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<String> tags,  EntityComponents components)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameEntity() when $default != null:
return $default(_that.id,_that.tags,_that.components);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<String> tags,  EntityComponents components)  $default,) {final _that = this;
switch (_that) {
case _GameEntity():
return $default(_that.id,_that.tags,_that.components);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<String> tags,  EntityComponents components)?  $default,) {final _that = this;
switch (_that) {
case _GameEntity() when $default != null:
return $default(_that.id,_that.tags,_that.components);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameEntity implements GameEntity {
  const _GameEntity({required this.id, final  List<String> tags = const [], required this.components}): _tags = tags;
  factory _GameEntity.fromJson(Map<String, dynamic> json) => _$GameEntityFromJson(json);

@override final  String id;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  EntityComponents components;

/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameEntityCopyWith<_GameEntity> get copyWith => __$GameEntityCopyWithImpl<_GameEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.components, components) || other.components == components));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_tags),components);

@override
String toString() {
  return 'GameEntity(id: $id, tags: $tags, components: $components)';
}


}

/// @nodoc
abstract mixin class _$GameEntityCopyWith<$Res> implements $GameEntityCopyWith<$Res> {
  factory _$GameEntityCopyWith(_GameEntity value, $Res Function(_GameEntity) _then) = __$GameEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> tags, EntityComponents components
});


@override $EntityComponentsCopyWith<$Res> get components;

}
/// @nodoc
class __$GameEntityCopyWithImpl<$Res>
    implements _$GameEntityCopyWith<$Res> {
  __$GameEntityCopyWithImpl(this._self, this._then);

  final _GameEntity _self;
  final $Res Function(_GameEntity) _then;

/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tags = null,Object? components = null,}) {
  return _then(_GameEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,components: null == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as EntityComponents,
  ));
}

/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityComponentsCopyWith<$Res> get components {
  
  return $EntityComponentsCopyWith<$Res>(_self.components, (value) {
    return _then(_self.copyWith(components: value));
  });
}
}


/// @nodoc
mixin _$GameRules {

 List<WinCondition> get winConditions; List<LoseCondition> get loseConditions; int get playerLives; double? get timeLimit;
/// Create a copy of GameRules
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameRulesCopyWith<GameRules> get copyWith => _$GameRulesCopyWithImpl<GameRules>(this as GameRules, _$identity);

  /// Serializes this GameRules to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameRules&&const DeepCollectionEquality().equals(other.winConditions, winConditions)&&const DeepCollectionEquality().equals(other.loseConditions, loseConditions)&&(identical(other.playerLives, playerLives) || other.playerLives == playerLives)&&(identical(other.timeLimit, timeLimit) || other.timeLimit == timeLimit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(winConditions),const DeepCollectionEquality().hash(loseConditions),playerLives,timeLimit);

@override
String toString() {
  return 'GameRules(winConditions: $winConditions, loseConditions: $loseConditions, playerLives: $playerLives, timeLimit: $timeLimit)';
}


}

/// @nodoc
abstract mixin class $GameRulesCopyWith<$Res>  {
  factory $GameRulesCopyWith(GameRules value, $Res Function(GameRules) _then) = _$GameRulesCopyWithImpl;
@useResult
$Res call({
 List<WinCondition> winConditions, List<LoseCondition> loseConditions, int playerLives, double? timeLimit
});




}
/// @nodoc
class _$GameRulesCopyWithImpl<$Res>
    implements $GameRulesCopyWith<$Res> {
  _$GameRulesCopyWithImpl(this._self, this._then);

  final GameRules _self;
  final $Res Function(GameRules) _then;

/// Create a copy of GameRules
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? winConditions = null,Object? loseConditions = null,Object? playerLives = null,Object? timeLimit = freezed,}) {
  return _then(_self.copyWith(
winConditions: null == winConditions ? _self.winConditions : winConditions // ignore: cast_nullable_to_non_nullable
as List<WinCondition>,loseConditions: null == loseConditions ? _self.loseConditions : loseConditions // ignore: cast_nullable_to_non_nullable
as List<LoseCondition>,playerLives: null == playerLives ? _self.playerLives : playerLives // ignore: cast_nullable_to_non_nullable
as int,timeLimit: freezed == timeLimit ? _self.timeLimit : timeLimit // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [GameRules].
extension GameRulesPatterns on GameRules {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameRules value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameRules() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameRules value)  $default,){
final _that = this;
switch (_that) {
case _GameRules():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameRules value)?  $default,){
final _that = this;
switch (_that) {
case _GameRules() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WinCondition> winConditions,  List<LoseCondition> loseConditions,  int playerLives,  double? timeLimit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameRules() when $default != null:
return $default(_that.winConditions,_that.loseConditions,_that.playerLives,_that.timeLimit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WinCondition> winConditions,  List<LoseCondition> loseConditions,  int playerLives,  double? timeLimit)  $default,) {final _that = this;
switch (_that) {
case _GameRules():
return $default(_that.winConditions,_that.loseConditions,_that.playerLives,_that.timeLimit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WinCondition> winConditions,  List<LoseCondition> loseConditions,  int playerLives,  double? timeLimit)?  $default,) {final _that = this;
switch (_that) {
case _GameRules() when $default != null:
return $default(_that.winConditions,_that.loseConditions,_that.playerLives,_that.timeLimit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameRules implements GameRules {
  const _GameRules({final  List<WinCondition> winConditions = const [], final  List<LoseCondition> loseConditions = const [], this.playerLives = 3, this.timeLimit}): _winConditions = winConditions,_loseConditions = loseConditions;
  factory _GameRules.fromJson(Map<String, dynamic> json) => _$GameRulesFromJson(json);

 final  List<WinCondition> _winConditions;
@override@JsonKey() List<WinCondition> get winConditions {
  if (_winConditions is EqualUnmodifiableListView) return _winConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_winConditions);
}

 final  List<LoseCondition> _loseConditions;
@override@JsonKey() List<LoseCondition> get loseConditions {
  if (_loseConditions is EqualUnmodifiableListView) return _loseConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_loseConditions);
}

@override@JsonKey() final  int playerLives;
@override final  double? timeLimit;

/// Create a copy of GameRules
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameRulesCopyWith<_GameRules> get copyWith => __$GameRulesCopyWithImpl<_GameRules>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameRulesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameRules&&const DeepCollectionEquality().equals(other._winConditions, _winConditions)&&const DeepCollectionEquality().equals(other._loseConditions, _loseConditions)&&(identical(other.playerLives, playerLives) || other.playerLives == playerLives)&&(identical(other.timeLimit, timeLimit) || other.timeLimit == timeLimit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_winConditions),const DeepCollectionEquality().hash(_loseConditions),playerLives,timeLimit);

@override
String toString() {
  return 'GameRules(winConditions: $winConditions, loseConditions: $loseConditions, playerLives: $playerLives, timeLimit: $timeLimit)';
}


}

/// @nodoc
abstract mixin class _$GameRulesCopyWith<$Res> implements $GameRulesCopyWith<$Res> {
  factory _$GameRulesCopyWith(_GameRules value, $Res Function(_GameRules) _then) = __$GameRulesCopyWithImpl;
@override @useResult
$Res call({
 List<WinCondition> winConditions, List<LoseCondition> loseConditions, int playerLives, double? timeLimit
});




}
/// @nodoc
class __$GameRulesCopyWithImpl<$Res>
    implements _$GameRulesCopyWith<$Res> {
  __$GameRulesCopyWithImpl(this._self, this._then);

  final _GameRules _self;
  final $Res Function(_GameRules) _then;

/// Create a copy of GameRules
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? winConditions = null,Object? loseConditions = null,Object? playerLives = null,Object? timeLimit = freezed,}) {
  return _then(_GameRules(
winConditions: null == winConditions ? _self._winConditions : winConditions // ignore: cast_nullable_to_non_nullable
as List<WinCondition>,loseConditions: null == loseConditions ? _self._loseConditions : loseConditions // ignore: cast_nullable_to_non_nullable
as List<LoseCondition>,playerLives: null == playerLives ? _self.playerLives : playerLives // ignore: cast_nullable_to_non_nullable
as int,timeLimit: freezed == timeLimit ? _self.timeLimit : timeLimit // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$WinCondition {

 WinConditionType get type; String? get entityId; String? get target; double? get value;
/// Create a copy of WinCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WinConditionCopyWith<WinCondition> get copyWith => _$WinConditionCopyWithImpl<WinCondition>(this as WinCondition, _$identity);

  /// Serializes this WinCondition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WinCondition&&(identical(other.type, type) || other.type == type)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.target, target) || other.target == target)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,entityId,target,value);

@override
String toString() {
  return 'WinCondition(type: $type, entityId: $entityId, target: $target, value: $value)';
}


}

/// @nodoc
abstract mixin class $WinConditionCopyWith<$Res>  {
  factory $WinConditionCopyWith(WinCondition value, $Res Function(WinCondition) _then) = _$WinConditionCopyWithImpl;
@useResult
$Res call({
 WinConditionType type, String? entityId, String? target, double? value
});




}
/// @nodoc
class _$WinConditionCopyWithImpl<$Res>
    implements $WinConditionCopyWith<$Res> {
  _$WinConditionCopyWithImpl(this._self, this._then);

  final WinCondition _self;
  final $Res Function(WinCondition) _then;

/// Create a copy of WinCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? entityId = freezed,Object? target = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WinConditionType,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String?,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [WinCondition].
extension WinConditionPatterns on WinCondition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WinCondition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WinCondition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WinCondition value)  $default,){
final _that = this;
switch (_that) {
case _WinCondition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WinCondition value)?  $default,){
final _that = this;
switch (_that) {
case _WinCondition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WinConditionType type,  String? entityId,  String? target,  double? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WinCondition() when $default != null:
return $default(_that.type,_that.entityId,_that.target,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WinConditionType type,  String? entityId,  String? target,  double? value)  $default,) {final _that = this;
switch (_that) {
case _WinCondition():
return $default(_that.type,_that.entityId,_that.target,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WinConditionType type,  String? entityId,  String? target,  double? value)?  $default,) {final _that = this;
switch (_that) {
case _WinCondition() when $default != null:
return $default(_that.type,_that.entityId,_that.target,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WinCondition implements WinCondition {
  const _WinCondition({required this.type, this.entityId, this.target, this.value});
  factory _WinCondition.fromJson(Map<String, dynamic> json) => _$WinConditionFromJson(json);

@override final  WinConditionType type;
@override final  String? entityId;
@override final  String? target;
@override final  double? value;

/// Create a copy of WinCondition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WinConditionCopyWith<_WinCondition> get copyWith => __$WinConditionCopyWithImpl<_WinCondition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WinConditionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WinCondition&&(identical(other.type, type) || other.type == type)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.target, target) || other.target == target)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,entityId,target,value);

@override
String toString() {
  return 'WinCondition(type: $type, entityId: $entityId, target: $target, value: $value)';
}


}

/// @nodoc
abstract mixin class _$WinConditionCopyWith<$Res> implements $WinConditionCopyWith<$Res> {
  factory _$WinConditionCopyWith(_WinCondition value, $Res Function(_WinCondition) _then) = __$WinConditionCopyWithImpl;
@override @useResult
$Res call({
 WinConditionType type, String? entityId, String? target, double? value
});




}
/// @nodoc
class __$WinConditionCopyWithImpl<$Res>
    implements _$WinConditionCopyWith<$Res> {
  __$WinConditionCopyWithImpl(this._self, this._then);

  final _WinCondition _self;
  final $Res Function(_WinCondition) _then;

/// Create a copy of WinCondition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? entityId = freezed,Object? target = freezed,Object? value = freezed,}) {
  return _then(_WinCondition(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WinConditionType,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String?,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$LoseCondition {

 LoseConditionType get type; double? get value;
/// Create a copy of LoseCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoseConditionCopyWith<LoseCondition> get copyWith => _$LoseConditionCopyWithImpl<LoseCondition>(this as LoseCondition, _$identity);

  /// Serializes this LoseCondition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoseCondition&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'LoseCondition(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class $LoseConditionCopyWith<$Res>  {
  factory $LoseConditionCopyWith(LoseCondition value, $Res Function(LoseCondition) _then) = _$LoseConditionCopyWithImpl;
@useResult
$Res call({
 LoseConditionType type, double? value
});




}
/// @nodoc
class _$LoseConditionCopyWithImpl<$Res>
    implements $LoseConditionCopyWith<$Res> {
  _$LoseConditionCopyWithImpl(this._self, this._then);

  final LoseCondition _self;
  final $Res Function(LoseCondition) _then;

/// Create a copy of LoseCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LoseConditionType,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoseCondition].
extension LoseConditionPatterns on LoseCondition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoseCondition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoseCondition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoseCondition value)  $default,){
final _that = this;
switch (_that) {
case _LoseCondition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoseCondition value)?  $default,){
final _that = this;
switch (_that) {
case _LoseCondition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LoseConditionType type,  double? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoseCondition() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LoseConditionType type,  double? value)  $default,) {final _that = this;
switch (_that) {
case _LoseCondition():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LoseConditionType type,  double? value)?  $default,) {final _that = this;
switch (_that) {
case _LoseCondition() when $default != null:
return $default(_that.type,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoseCondition implements LoseCondition {
  const _LoseCondition({required this.type, this.value});
  factory _LoseCondition.fromJson(Map<String, dynamic> json) => _$LoseConditionFromJson(json);

@override final  LoseConditionType type;
@override final  double? value;

/// Create a copy of LoseCondition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoseConditionCopyWith<_LoseCondition> get copyWith => __$LoseConditionCopyWithImpl<_LoseCondition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoseConditionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoseCondition&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'LoseCondition(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class _$LoseConditionCopyWith<$Res> implements $LoseConditionCopyWith<$Res> {
  factory _$LoseConditionCopyWith(_LoseCondition value, $Res Function(_LoseCondition) _then) = __$LoseConditionCopyWithImpl;
@override @useResult
$Res call({
 LoseConditionType type, double? value
});




}
/// @nodoc
class __$LoseConditionCopyWithImpl<$Res>
    implements _$LoseConditionCopyWith<$Res> {
  __$LoseConditionCopyWithImpl(this._self, this._then);

  final _LoseCondition _self;
  final $Res Function(_LoseCondition) _then;

/// Create a copy of LoseCondition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = freezed,}) {
  return _then(_LoseCondition(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LoseConditionType,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$GameUI {

 bool get showScore; bool get showHealth; bool get showTimer; GameControls? get controls;
/// Create a copy of GameUI
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameUICopyWith<GameUI> get copyWith => _$GameUICopyWithImpl<GameUI>(this as GameUI, _$identity);

  /// Serializes this GameUI to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameUI&&(identical(other.showScore, showScore) || other.showScore == showScore)&&(identical(other.showHealth, showHealth) || other.showHealth == showHealth)&&(identical(other.showTimer, showTimer) || other.showTimer == showTimer)&&(identical(other.controls, controls) || other.controls == controls));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,showScore,showHealth,showTimer,controls);

@override
String toString() {
  return 'GameUI(showScore: $showScore, showHealth: $showHealth, showTimer: $showTimer, controls: $controls)';
}


}

/// @nodoc
abstract mixin class $GameUICopyWith<$Res>  {
  factory $GameUICopyWith(GameUI value, $Res Function(GameUI) _then) = _$GameUICopyWithImpl;
@useResult
$Res call({
 bool showScore, bool showHealth, bool showTimer, GameControls? controls
});


$GameControlsCopyWith<$Res>? get controls;

}
/// @nodoc
class _$GameUICopyWithImpl<$Res>
    implements $GameUICopyWith<$Res> {
  _$GameUICopyWithImpl(this._self, this._then);

  final GameUI _self;
  final $Res Function(GameUI) _then;

/// Create a copy of GameUI
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showScore = null,Object? showHealth = null,Object? showTimer = null,Object? controls = freezed,}) {
  return _then(_self.copyWith(
showScore: null == showScore ? _self.showScore : showScore // ignore: cast_nullable_to_non_nullable
as bool,showHealth: null == showHealth ? _self.showHealth : showHealth // ignore: cast_nullable_to_non_nullable
as bool,showTimer: null == showTimer ? _self.showTimer : showTimer // ignore: cast_nullable_to_non_nullable
as bool,controls: freezed == controls ? _self.controls : controls // ignore: cast_nullable_to_non_nullable
as GameControls?,
  ));
}
/// Create a copy of GameUI
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameControlsCopyWith<$Res>? get controls {
    if (_self.controls == null) {
    return null;
  }

  return $GameControlsCopyWith<$Res>(_self.controls!, (value) {
    return _then(_self.copyWith(controls: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameUI].
extension GameUIPatterns on GameUI {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameUI value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameUI() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameUI value)  $default,){
final _that = this;
switch (_that) {
case _GameUI():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameUI value)?  $default,){
final _that = this;
switch (_that) {
case _GameUI() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool showScore,  bool showHealth,  bool showTimer,  GameControls? controls)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameUI() when $default != null:
return $default(_that.showScore,_that.showHealth,_that.showTimer,_that.controls);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool showScore,  bool showHealth,  bool showTimer,  GameControls? controls)  $default,) {final _that = this;
switch (_that) {
case _GameUI():
return $default(_that.showScore,_that.showHealth,_that.showTimer,_that.controls);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool showScore,  bool showHealth,  bool showTimer,  GameControls? controls)?  $default,) {final _that = this;
switch (_that) {
case _GameUI() when $default != null:
return $default(_that.showScore,_that.showHealth,_that.showTimer,_that.controls);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameUI implements GameUI {
  const _GameUI({this.showScore = true, this.showHealth = true, this.showTimer = false, this.controls});
  factory _GameUI.fromJson(Map<String, dynamic> json) => _$GameUIFromJson(json);

@override@JsonKey() final  bool showScore;
@override@JsonKey() final  bool showHealth;
@override@JsonKey() final  bool showTimer;
@override final  GameControls? controls;

/// Create a copy of GameUI
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameUICopyWith<_GameUI> get copyWith => __$GameUICopyWithImpl<_GameUI>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameUIToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameUI&&(identical(other.showScore, showScore) || other.showScore == showScore)&&(identical(other.showHealth, showHealth) || other.showHealth == showHealth)&&(identical(other.showTimer, showTimer) || other.showTimer == showTimer)&&(identical(other.controls, controls) || other.controls == controls));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,showScore,showHealth,showTimer,controls);

@override
String toString() {
  return 'GameUI(showScore: $showScore, showHealth: $showHealth, showTimer: $showTimer, controls: $controls)';
}


}

/// @nodoc
abstract mixin class _$GameUICopyWith<$Res> implements $GameUICopyWith<$Res> {
  factory _$GameUICopyWith(_GameUI value, $Res Function(_GameUI) _then) = __$GameUICopyWithImpl;
@override @useResult
$Res call({
 bool showScore, bool showHealth, bool showTimer, GameControls? controls
});


@override $GameControlsCopyWith<$Res>? get controls;

}
/// @nodoc
class __$GameUICopyWithImpl<$Res>
    implements _$GameUICopyWith<$Res> {
  __$GameUICopyWithImpl(this._self, this._then);

  final _GameUI _self;
  final $Res Function(_GameUI) _then;

/// Create a copy of GameUI
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showScore = null,Object? showHealth = null,Object? showTimer = null,Object? controls = freezed,}) {
  return _then(_GameUI(
showScore: null == showScore ? _self.showScore : showScore // ignore: cast_nullable_to_non_nullable
as bool,showHealth: null == showHealth ? _self.showHealth : showHealth // ignore: cast_nullable_to_non_nullable
as bool,showTimer: null == showTimer ? _self.showTimer : showTimer // ignore: cast_nullable_to_non_nullable
as bool,controls: freezed == controls ? _self.controls : controls // ignore: cast_nullable_to_non_nullable
as GameControls?,
  ));
}

/// Create a copy of GameUI
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameControlsCopyWith<$Res>? get controls {
    if (_self.controls == null) {
    return null;
  }

  return $GameControlsCopyWith<$Res>(_self.controls!, (value) {
    return _then(_self.copyWith(controls: value));
  });
}
}


/// @nodoc
mixin _$GameControls {

 bool get touchControls; bool get keyboardControls;
/// Create a copy of GameControls
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameControlsCopyWith<GameControls> get copyWith => _$GameControlsCopyWithImpl<GameControls>(this as GameControls, _$identity);

  /// Serializes this GameControls to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameControls&&(identical(other.touchControls, touchControls) || other.touchControls == touchControls)&&(identical(other.keyboardControls, keyboardControls) || other.keyboardControls == keyboardControls));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,touchControls,keyboardControls);

@override
String toString() {
  return 'GameControls(touchControls: $touchControls, keyboardControls: $keyboardControls)';
}


}

/// @nodoc
abstract mixin class $GameControlsCopyWith<$Res>  {
  factory $GameControlsCopyWith(GameControls value, $Res Function(GameControls) _then) = _$GameControlsCopyWithImpl;
@useResult
$Res call({
 bool touchControls, bool keyboardControls
});




}
/// @nodoc
class _$GameControlsCopyWithImpl<$Res>
    implements $GameControlsCopyWith<$Res> {
  _$GameControlsCopyWithImpl(this._self, this._then);

  final GameControls _self;
  final $Res Function(GameControls) _then;

/// Create a copy of GameControls
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? touchControls = null,Object? keyboardControls = null,}) {
  return _then(_self.copyWith(
touchControls: null == touchControls ? _self.touchControls : touchControls // ignore: cast_nullable_to_non_nullable
as bool,keyboardControls: null == keyboardControls ? _self.keyboardControls : keyboardControls // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GameControls].
extension GameControlsPatterns on GameControls {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameControls value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameControls() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameControls value)  $default,){
final _that = this;
switch (_that) {
case _GameControls():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameControls value)?  $default,){
final _that = this;
switch (_that) {
case _GameControls() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool touchControls,  bool keyboardControls)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameControls() when $default != null:
return $default(_that.touchControls,_that.keyboardControls);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool touchControls,  bool keyboardControls)  $default,) {final _that = this;
switch (_that) {
case _GameControls():
return $default(_that.touchControls,_that.keyboardControls);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool touchControls,  bool keyboardControls)?  $default,) {final _that = this;
switch (_that) {
case _GameControls() when $default != null:
return $default(_that.touchControls,_that.keyboardControls);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameControls implements GameControls {
  const _GameControls({this.touchControls = true, this.keyboardControls = true});
  factory _GameControls.fromJson(Map<String, dynamic> json) => _$GameControlsFromJson(json);

@override@JsonKey() final  bool touchControls;
@override@JsonKey() final  bool keyboardControls;

/// Create a copy of GameControls
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameControlsCopyWith<_GameControls> get copyWith => __$GameControlsCopyWithImpl<_GameControls>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameControlsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameControls&&(identical(other.touchControls, touchControls) || other.touchControls == touchControls)&&(identical(other.keyboardControls, keyboardControls) || other.keyboardControls == keyboardControls));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,touchControls,keyboardControls);

@override
String toString() {
  return 'GameControls(touchControls: $touchControls, keyboardControls: $keyboardControls)';
}


}

/// @nodoc
abstract mixin class _$GameControlsCopyWith<$Res> implements $GameControlsCopyWith<$Res> {
  factory _$GameControlsCopyWith(_GameControls value, $Res Function(_GameControls) _then) = __$GameControlsCopyWithImpl;
@override @useResult
$Res call({
 bool touchControls, bool keyboardControls
});




}
/// @nodoc
class __$GameControlsCopyWithImpl<$Res>
    implements _$GameControlsCopyWith<$Res> {
  __$GameControlsCopyWithImpl(this._self, this._then);

  final _GameControls _self;
  final $Res Function(_GameControls) _then;

/// Create a copy of GameControls
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? touchControls = null,Object? keyboardControls = null,}) {
  return _then(_GameControls(
touchControls: null == touchControls ? _self.touchControls : touchControls // ignore: cast_nullable_to_non_nullable
as bool,keyboardControls: null == keyboardControls ? _self.keyboardControls : keyboardControls // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
