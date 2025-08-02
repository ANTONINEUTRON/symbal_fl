// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_analytics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameAnalytics {

 String get gameId; int get likes; int get plays; int get shares; int get comments; DateTime? get lastUpdated;
/// Create a copy of GameAnalytics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameAnalyticsCopyWith<GameAnalytics> get copyWith => _$GameAnalyticsCopyWithImpl<GameAnalytics>(this as GameAnalytics, _$identity);

  /// Serializes this GameAnalytics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameAnalytics&&(identical(other.gameId, gameId) || other.gameId == gameId)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.plays, plays) || other.plays == plays)&&(identical(other.shares, shares) || other.shares == shares)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gameId,likes,plays,shares,comments,lastUpdated);

@override
String toString() {
  return 'GameAnalytics(gameId: $gameId, likes: $likes, plays: $plays, shares: $shares, comments: $comments, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class $GameAnalyticsCopyWith<$Res>  {
  factory $GameAnalyticsCopyWith(GameAnalytics value, $Res Function(GameAnalytics) _then) = _$GameAnalyticsCopyWithImpl;
@useResult
$Res call({
 String gameId, int likes, int plays, int shares, int comments, DateTime? lastUpdated
});




}
/// @nodoc
class _$GameAnalyticsCopyWithImpl<$Res>
    implements $GameAnalyticsCopyWith<$Res> {
  _$GameAnalyticsCopyWithImpl(this._self, this._then);

  final GameAnalytics _self;
  final $Res Function(GameAnalytics) _then;

/// Create a copy of GameAnalytics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gameId = null,Object? likes = null,Object? plays = null,Object? shares = null,Object? comments = null,Object? lastUpdated = freezed,}) {
  return _then(_self.copyWith(
gameId: null == gameId ? _self.gameId : gameId // ignore: cast_nullable_to_non_nullable
as String,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,plays: null == plays ? _self.plays : plays // ignore: cast_nullable_to_non_nullable
as int,shares: null == shares ? _self.shares : shares // ignore: cast_nullable_to_non_nullable
as int,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [GameAnalytics].
extension GameAnalyticsPatterns on GameAnalytics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameAnalytics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameAnalytics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameAnalytics value)  $default,){
final _that = this;
switch (_that) {
case _GameAnalytics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameAnalytics value)?  $default,){
final _that = this;
switch (_that) {
case _GameAnalytics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String gameId,  int likes,  int plays,  int shares,  int comments,  DateTime? lastUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameAnalytics() when $default != null:
return $default(_that.gameId,_that.likes,_that.plays,_that.shares,_that.comments,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String gameId,  int likes,  int plays,  int shares,  int comments,  DateTime? lastUpdated)  $default,) {final _that = this;
switch (_that) {
case _GameAnalytics():
return $default(_that.gameId,_that.likes,_that.plays,_that.shares,_that.comments,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String gameId,  int likes,  int plays,  int shares,  int comments,  DateTime? lastUpdated)?  $default,) {final _that = this;
switch (_that) {
case _GameAnalytics() when $default != null:
return $default(_that.gameId,_that.likes,_that.plays,_that.shares,_that.comments,_that.lastUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameAnalytics implements GameAnalytics {
  const _GameAnalytics({required this.gameId, this.likes = 0, this.plays = 0, this.shares = 0, this.comments = 0, this.lastUpdated});
  factory _GameAnalytics.fromJson(Map<String, dynamic> json) => _$GameAnalyticsFromJson(json);

@override final  String gameId;
@override@JsonKey() final  int likes;
@override@JsonKey() final  int plays;
@override@JsonKey() final  int shares;
@override@JsonKey() final  int comments;
@override final  DateTime? lastUpdated;

/// Create a copy of GameAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameAnalyticsCopyWith<_GameAnalytics> get copyWith => __$GameAnalyticsCopyWithImpl<_GameAnalytics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameAnalyticsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameAnalytics&&(identical(other.gameId, gameId) || other.gameId == gameId)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.plays, plays) || other.plays == plays)&&(identical(other.shares, shares) || other.shares == shares)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gameId,likes,plays,shares,comments,lastUpdated);

@override
String toString() {
  return 'GameAnalytics(gameId: $gameId, likes: $likes, plays: $plays, shares: $shares, comments: $comments, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class _$GameAnalyticsCopyWith<$Res> implements $GameAnalyticsCopyWith<$Res> {
  factory _$GameAnalyticsCopyWith(_GameAnalytics value, $Res Function(_GameAnalytics) _then) = __$GameAnalyticsCopyWithImpl;
@override @useResult
$Res call({
 String gameId, int likes, int plays, int shares, int comments, DateTime? lastUpdated
});




}
/// @nodoc
class __$GameAnalyticsCopyWithImpl<$Res>
    implements _$GameAnalyticsCopyWith<$Res> {
  __$GameAnalyticsCopyWithImpl(this._self, this._then);

  final _GameAnalytics _self;
  final $Res Function(_GameAnalytics) _then;

/// Create a copy of GameAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gameId = null,Object? likes = null,Object? plays = null,Object? shares = null,Object? comments = null,Object? lastUpdated = freezed,}) {
  return _then(_GameAnalytics(
gameId: null == gameId ? _self.gameId : gameId // ignore: cast_nullable_to_non_nullable
as String,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,plays: null == plays ? _self.plays : plays // ignore: cast_nullable_to_non_nullable
as int,shares: null == shares ? _self.shares : shares // ignore: cast_nullable_to_non_nullable
as int,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
