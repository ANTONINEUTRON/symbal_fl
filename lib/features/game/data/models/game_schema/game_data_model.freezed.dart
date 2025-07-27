// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_data_model.dart';

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
  const _WorldBounds({this.width = 800.0, this.height = 800.0, this.autoScale = true});
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

 String get id; List<String> get tags; EntityComponentsData get components;
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
 String id, List<String> tags, EntityComponentsData components
});


$EntityComponentsDataCopyWith<$Res> get components;

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
as EntityComponentsData,
  ));
}
/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityComponentsDataCopyWith<$Res> get components {
  
  return $EntityComponentsDataCopyWith<$Res>(_self.components, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<String> tags,  EntityComponentsData components)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<String> tags,  EntityComponentsData components)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<String> tags,  EntityComponentsData components)?  $default,) {final _that = this;
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

@override final  EntityComponentsData components;

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
 String id, List<String> tags, EntityComponentsData components
});


@override $EntityComponentsDataCopyWith<$Res> get components;

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
as EntityComponentsData,
  ));
}

/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityComponentsDataCopyWith<$Res> get components {
  
  return $EntityComponentsDataCopyWith<$Res>(_self.components, (value) {
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


/// @nodoc
mixin _$EntityComponentsData {

 TransformComponent? get transform; SSpriteComponent? get sprite; AnimationComponent? get animation; PhysicsComponent? get physics; CollisionComponent? get collision; MovementComponent? get movement; HealthComponent? get health; AIComponent? get ai; CollectibleComponent? get collectible; DamageComponent? get damage; PlatformComponent? get platform; TriggerComponent? get trigger;
/// Create a copy of EntityComponentsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityComponentsDataCopyWith<EntityComponentsData> get copyWith => _$EntityComponentsDataCopyWithImpl<EntityComponentsData>(this as EntityComponentsData, _$identity);

  /// Serializes this EntityComponentsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityComponentsData&&(identical(other.transform, transform) || other.transform == transform)&&(identical(other.sprite, sprite) || other.sprite == sprite)&&(identical(other.animation, animation) || other.animation == animation)&&(identical(other.physics, physics) || other.physics == physics)&&(identical(other.collision, collision) || other.collision == collision)&&(identical(other.movement, movement) || other.movement == movement)&&(identical(other.health, health) || other.health == health)&&(identical(other.ai, ai) || other.ai == ai)&&(identical(other.collectible, collectible) || other.collectible == collectible)&&(identical(other.damage, damage) || other.damage == damage)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.trigger, trigger) || other.trigger == trigger));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transform,sprite,animation,physics,collision,movement,health,ai,collectible,damage,platform,trigger);

@override
String toString() {
  return 'EntityComponentsData(transform: $transform, sprite: $sprite, animation: $animation, physics: $physics, collision: $collision, movement: $movement, health: $health, ai: $ai, collectible: $collectible, damage: $damage, platform: $platform, trigger: $trigger)';
}


}

/// @nodoc
abstract mixin class $EntityComponentsDataCopyWith<$Res>  {
  factory $EntityComponentsDataCopyWith(EntityComponentsData value, $Res Function(EntityComponentsData) _then) = _$EntityComponentsDataCopyWithImpl;
@useResult
$Res call({
 TransformComponent? transform, SSpriteComponent? sprite, AnimationComponent? animation, PhysicsComponent? physics, CollisionComponent? collision, MovementComponent? movement, HealthComponent? health, AIComponent? ai, CollectibleComponent? collectible, DamageComponent? damage, PlatformComponent? platform, TriggerComponent? trigger
});


$TransformComponentCopyWith<$Res>? get transform;$SSpriteComponentCopyWith<$Res>? get sprite;$AnimationComponentCopyWith<$Res>? get animation;$PhysicsComponentCopyWith<$Res>? get physics;$CollisionComponentCopyWith<$Res>? get collision;$MovementComponentCopyWith<$Res>? get movement;$HealthComponentCopyWith<$Res>? get health;$AIComponentCopyWith<$Res>? get ai;$CollectibleComponentCopyWith<$Res>? get collectible;$DamageComponentCopyWith<$Res>? get damage;$PlatformComponentCopyWith<$Res>? get platform;$TriggerComponentCopyWith<$Res>? get trigger;

}
/// @nodoc
class _$EntityComponentsDataCopyWithImpl<$Res>
    implements $EntityComponentsDataCopyWith<$Res> {
  _$EntityComponentsDataCopyWithImpl(this._self, this._then);

  final EntityComponentsData _self;
  final $Res Function(EntityComponentsData) _then;

/// Create a copy of EntityComponentsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transform = freezed,Object? sprite = freezed,Object? animation = freezed,Object? physics = freezed,Object? collision = freezed,Object? movement = freezed,Object? health = freezed,Object? ai = freezed,Object? collectible = freezed,Object? damage = freezed,Object? platform = freezed,Object? trigger = freezed,}) {
  return _then(_self.copyWith(
transform: freezed == transform ? _self.transform : transform // ignore: cast_nullable_to_non_nullable
as TransformComponent?,sprite: freezed == sprite ? _self.sprite : sprite // ignore: cast_nullable_to_non_nullable
as SSpriteComponent?,animation: freezed == animation ? _self.animation : animation // ignore: cast_nullable_to_non_nullable
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
/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SSpriteComponentCopyWith<$Res>? get sprite {
    if (_self.sprite == null) {
    return null;
  }

  return $SSpriteComponentCopyWith<$Res>(_self.sprite!, (value) {
    return _then(_self.copyWith(sprite: value));
  });
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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


/// Adds pattern-matching-related methods to [EntityComponentsData].
extension EntityComponentsDataPatterns on EntityComponentsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntityComponentsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntityComponentsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntityComponentsData value)  $default,){
final _that = this;
switch (_that) {
case _EntityComponentsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntityComponentsData value)?  $default,){
final _that = this;
switch (_that) {
case _EntityComponentsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransformComponent? transform,  SSpriteComponent? sprite,  AnimationComponent? animation,  PhysicsComponent? physics,  CollisionComponent? collision,  MovementComponent? movement,  HealthComponent? health,  AIComponent? ai,  CollectibleComponent? collectible,  DamageComponent? damage,  PlatformComponent? platform,  TriggerComponent? trigger)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntityComponentsData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransformComponent? transform,  SSpriteComponent? sprite,  AnimationComponent? animation,  PhysicsComponent? physics,  CollisionComponent? collision,  MovementComponent? movement,  HealthComponent? health,  AIComponent? ai,  CollectibleComponent? collectible,  DamageComponent? damage,  PlatformComponent? platform,  TriggerComponent? trigger)  $default,) {final _that = this;
switch (_that) {
case _EntityComponentsData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransformComponent? transform,  SSpriteComponent? sprite,  AnimationComponent? animation,  PhysicsComponent? physics,  CollisionComponent? collision,  MovementComponent? movement,  HealthComponent? health,  AIComponent? ai,  CollectibleComponent? collectible,  DamageComponent? damage,  PlatformComponent? platform,  TriggerComponent? trigger)?  $default,) {final _that = this;
switch (_that) {
case _EntityComponentsData() when $default != null:
return $default(_that.transform,_that.sprite,_that.animation,_that.physics,_that.collision,_that.movement,_that.health,_that.ai,_that.collectible,_that.damage,_that.platform,_that.trigger);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EntityComponentsData implements EntityComponentsData {
  const _EntityComponentsData({this.transform, this.sprite, this.animation, this.physics, this.collision, this.movement, this.health, this.ai, this.collectible, this.damage, this.platform, this.trigger});
  factory _EntityComponentsData.fromJson(Map<String, dynamic> json) => _$EntityComponentsDataFromJson(json);

@override final  TransformComponent? transform;
@override final  SSpriteComponent? sprite;
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

/// Create a copy of EntityComponentsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityComponentsDataCopyWith<_EntityComponentsData> get copyWith => __$EntityComponentsDataCopyWithImpl<_EntityComponentsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntityComponentsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityComponentsData&&(identical(other.transform, transform) || other.transform == transform)&&(identical(other.sprite, sprite) || other.sprite == sprite)&&(identical(other.animation, animation) || other.animation == animation)&&(identical(other.physics, physics) || other.physics == physics)&&(identical(other.collision, collision) || other.collision == collision)&&(identical(other.movement, movement) || other.movement == movement)&&(identical(other.health, health) || other.health == health)&&(identical(other.ai, ai) || other.ai == ai)&&(identical(other.collectible, collectible) || other.collectible == collectible)&&(identical(other.damage, damage) || other.damage == damage)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.trigger, trigger) || other.trigger == trigger));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transform,sprite,animation,physics,collision,movement,health,ai,collectible,damage,platform,trigger);

@override
String toString() {
  return 'EntityComponentsData(transform: $transform, sprite: $sprite, animation: $animation, physics: $physics, collision: $collision, movement: $movement, health: $health, ai: $ai, collectible: $collectible, damage: $damage, platform: $platform, trigger: $trigger)';
}


}

/// @nodoc
abstract mixin class _$EntityComponentsDataCopyWith<$Res> implements $EntityComponentsDataCopyWith<$Res> {
  factory _$EntityComponentsDataCopyWith(_EntityComponentsData value, $Res Function(_EntityComponentsData) _then) = __$EntityComponentsDataCopyWithImpl;
@override @useResult
$Res call({
 TransformComponent? transform, SSpriteComponent? sprite, AnimationComponent? animation, PhysicsComponent? physics, CollisionComponent? collision, MovementComponent? movement, HealthComponent? health, AIComponent? ai, CollectibleComponent? collectible, DamageComponent? damage, PlatformComponent? platform, TriggerComponent? trigger
});


@override $TransformComponentCopyWith<$Res>? get transform;@override $SSpriteComponentCopyWith<$Res>? get sprite;@override $AnimationComponentCopyWith<$Res>? get animation;@override $PhysicsComponentCopyWith<$Res>? get physics;@override $CollisionComponentCopyWith<$Res>? get collision;@override $MovementComponentCopyWith<$Res>? get movement;@override $HealthComponentCopyWith<$Res>? get health;@override $AIComponentCopyWith<$Res>? get ai;@override $CollectibleComponentCopyWith<$Res>? get collectible;@override $DamageComponentCopyWith<$Res>? get damage;@override $PlatformComponentCopyWith<$Res>? get platform;@override $TriggerComponentCopyWith<$Res>? get trigger;

}
/// @nodoc
class __$EntityComponentsDataCopyWithImpl<$Res>
    implements _$EntityComponentsDataCopyWith<$Res> {
  __$EntityComponentsDataCopyWithImpl(this._self, this._then);

  final _EntityComponentsData _self;
  final $Res Function(_EntityComponentsData) _then;

/// Create a copy of EntityComponentsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transform = freezed,Object? sprite = freezed,Object? animation = freezed,Object? physics = freezed,Object? collision = freezed,Object? movement = freezed,Object? health = freezed,Object? ai = freezed,Object? collectible = freezed,Object? damage = freezed,Object? platform = freezed,Object? trigger = freezed,}) {
  return _then(_EntityComponentsData(
transform: freezed == transform ? _self.transform : transform // ignore: cast_nullable_to_non_nullable
as TransformComponent?,sprite: freezed == sprite ? _self.sprite : sprite // ignore: cast_nullable_to_non_nullable
as SSpriteComponent?,animation: freezed == animation ? _self.animation : animation // ignore: cast_nullable_to_non_nullable
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

/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SSpriteComponentCopyWith<$Res>? get sprite {
    if (_self.sprite == null) {
    return null;
  }

  return $SSpriteComponentCopyWith<$Res>(_self.sprite!, (value) {
    return _then(_self.copyWith(sprite: value));
  });
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
}/// Create a copy of EntityComponentsData
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
mixin _$SSpriteComponent {

 String get asset; double? get width; double? get height; bool get flipX; bool get flipY;
/// Create a copy of SSpriteComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SSpriteComponentCopyWith<SSpriteComponent> get copyWith => _$SSpriteComponentCopyWithImpl<SSpriteComponent>(this as SSpriteComponent, _$identity);

  /// Serializes this SSpriteComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SSpriteComponent&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.flipX, flipX) || other.flipX == flipX)&&(identical(other.flipY, flipY) || other.flipY == flipY));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,asset,width,height,flipX,flipY);

@override
String toString() {
  return 'SSpriteComponent(asset: $asset, width: $width, height: $height, flipX: $flipX, flipY: $flipY)';
}


}

/// @nodoc
abstract mixin class $SSpriteComponentCopyWith<$Res>  {
  factory $SSpriteComponentCopyWith(SSpriteComponent value, $Res Function(SSpriteComponent) _then) = _$SSpriteComponentCopyWithImpl;
@useResult
$Res call({
 String asset, double? width, double? height, bool flipX, bool flipY
});




}
/// @nodoc
class _$SSpriteComponentCopyWithImpl<$Res>
    implements $SSpriteComponentCopyWith<$Res> {
  _$SSpriteComponentCopyWithImpl(this._self, this._then);

  final SSpriteComponent _self;
  final $Res Function(SSpriteComponent) _then;

/// Create a copy of SSpriteComponent
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


/// Adds pattern-matching-related methods to [SSpriteComponent].
extension SSpriteComponentPatterns on SSpriteComponent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SSpriteComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SSpriteComponent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SSpriteComponent value)  $default,){
final _that = this;
switch (_that) {
case _SSpriteComponent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SSpriteComponent value)?  $default,){
final _that = this;
switch (_that) {
case _SSpriteComponent() when $default != null:
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
case _SSpriteComponent() when $default != null:
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
case _SSpriteComponent():
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
case _SSpriteComponent() when $default != null:
return $default(_that.asset,_that.width,_that.height,_that.flipX,_that.flipY);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SSpriteComponent implements SSpriteComponent {
  const _SSpriteComponent({required this.asset, this.width, this.height, this.flipX = false, this.flipY = false});
  factory _SSpriteComponent.fromJson(Map<String, dynamic> json) => _$SSpriteComponentFromJson(json);

@override final  String asset;
@override final  double? width;
@override final  double? height;
@override@JsonKey() final  bool flipX;
@override@JsonKey() final  bool flipY;

/// Create a copy of SSpriteComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SSpriteComponentCopyWith<_SSpriteComponent> get copyWith => __$SSpriteComponentCopyWithImpl<_SSpriteComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SSpriteComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SSpriteComponent&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.flipX, flipX) || other.flipX == flipX)&&(identical(other.flipY, flipY) || other.flipY == flipY));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,asset,width,height,flipX,flipY);

@override
String toString() {
  return 'SSpriteComponent(asset: $asset, width: $width, height: $height, flipX: $flipX, flipY: $flipY)';
}


}

/// @nodoc
abstract mixin class _$SSpriteComponentCopyWith<$Res> implements $SSpriteComponentCopyWith<$Res> {
  factory _$SSpriteComponentCopyWith(_SSpriteComponent value, $Res Function(_SSpriteComponent) _then) = __$SSpriteComponentCopyWithImpl;
@override @useResult
$Res call({
 String asset, double? width, double? height, bool flipX, bool flipY
});




}
/// @nodoc
class __$SSpriteComponentCopyWithImpl<$Res>
    implements _$SSpriteComponentCopyWith<$Res> {
  __$SSpriteComponentCopyWithImpl(this._self, this._then);

  final _SSpriteComponent _self;
  final $Res Function(_SSpriteComponent) _then;

/// Create a copy of SSpriteComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asset = null,Object? width = freezed,Object? height = freezed,Object? flipX = null,Object? flipY = null,}) {
  return _then(_SSpriteComponent(
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
