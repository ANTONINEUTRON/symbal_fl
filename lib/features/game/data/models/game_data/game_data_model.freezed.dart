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
mixin _$GameDataModel {

 String get id; List<String> get assets; int get version; String get renderableContent; String get prompt; String get message;
/// Create a copy of GameDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameDataModelCopyWith<GameDataModel> get copyWith => _$GameDataModelCopyWithImpl<GameDataModel>(this as GameDataModel, _$identity);

  /// Serializes this GameDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameDataModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.assets, assets)&&(identical(other.version, version) || other.version == version)&&(identical(other.renderableContent, renderableContent) || other.renderableContent == renderableContent)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(assets),version,renderableContent,prompt,message);

@override
String toString() {
  return 'GameDataModel(id: $id, assets: $assets, version: $version, renderableContent: $renderableContent, prompt: $prompt, message: $message)';
}


}

/// @nodoc
abstract mixin class $GameDataModelCopyWith<$Res>  {
  factory $GameDataModelCopyWith(GameDataModel value, $Res Function(GameDataModel) _then) = _$GameDataModelCopyWithImpl;
@useResult
$Res call({
 String id, List<String> assets, int version, String renderableContent, String prompt, String message
});




}
/// @nodoc
class _$GameDataModelCopyWithImpl<$Res>
    implements $GameDataModelCopyWith<$Res> {
  _$GameDataModelCopyWithImpl(this._self, this._then);

  final GameDataModel _self;
  final $Res Function(GameDataModel) _then;

/// Create a copy of GameDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? assets = null,Object? version = null,Object? renderableContent = null,Object? prompt = null,Object? message = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assets: null == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<String>,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,renderableContent: null == renderableContent ? _self.renderableContent : renderableContent // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GameDataModel].
extension GameDataModelPatterns on GameDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameDataModel value)  $default,){
final _that = this;
switch (_that) {
case _GameDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _GameDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<String> assets,  int version,  String renderableContent,  String prompt,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameDataModel() when $default != null:
return $default(_that.id,_that.assets,_that.version,_that.renderableContent,_that.prompt,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<String> assets,  int version,  String renderableContent,  String prompt,  String message)  $default,) {final _that = this;
switch (_that) {
case _GameDataModel():
return $default(_that.id,_that.assets,_that.version,_that.renderableContent,_that.prompt,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<String> assets,  int version,  String renderableContent,  String prompt,  String message)?  $default,) {final _that = this;
switch (_that) {
case _GameDataModel() when $default != null:
return $default(_that.id,_that.assets,_that.version,_that.renderableContent,_that.prompt,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameDataModel implements GameDataModel {
  const _GameDataModel({required this.id, final  List<String> assets = const [], this.version = 1, required this.renderableContent, required this.prompt, required this.message}): _assets = assets;
  factory _GameDataModel.fromJson(Map<String, dynamic> json) => _$GameDataModelFromJson(json);

@override final  String id;
 final  List<String> _assets;
@override@JsonKey() List<String> get assets {
  if (_assets is EqualUnmodifiableListView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assets);
}

@override@JsonKey() final  int version;
@override final  String renderableContent;
@override final  String prompt;
@override final  String message;

/// Create a copy of GameDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameDataModelCopyWith<_GameDataModel> get copyWith => __$GameDataModelCopyWithImpl<_GameDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameDataModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._assets, _assets)&&(identical(other.version, version) || other.version == version)&&(identical(other.renderableContent, renderableContent) || other.renderableContent == renderableContent)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_assets),version,renderableContent,prompt,message);

@override
String toString() {
  return 'GameDataModel(id: $id, assets: $assets, version: $version, renderableContent: $renderableContent, prompt: $prompt, message: $message)';
}


}

/// @nodoc
abstract mixin class _$GameDataModelCopyWith<$Res> implements $GameDataModelCopyWith<$Res> {
  factory _$GameDataModelCopyWith(_GameDataModel value, $Res Function(_GameDataModel) _then) = __$GameDataModelCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> assets, int version, String renderableContent, String prompt, String message
});




}
/// @nodoc
class __$GameDataModelCopyWithImpl<$Res>
    implements _$GameDataModelCopyWith<$Res> {
  __$GameDataModelCopyWithImpl(this._self, this._then);

  final _GameDataModel _self;
  final $Res Function(_GameDataModel) _then;

/// Create a copy of GameDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assets = null,Object? version = null,Object? renderableContent = null,Object? prompt = null,Object? message = null,}) {
  return _then(_GameDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assets: null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as List<String>,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,renderableContent: null == renderableContent ? _self.renderableContent : renderableContent // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
