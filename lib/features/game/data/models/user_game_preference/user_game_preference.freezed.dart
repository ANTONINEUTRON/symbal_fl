// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_game_preference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserGamePreference {

 String get userId; String get gameId; bool get isFavorite; bool get liked; bool get isBookmarked; DateTime? get lastPlayed;
/// Create a copy of UserGamePreference
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserGamePreferenceCopyWith<UserGamePreference> get copyWith => _$UserGamePreferenceCopyWithImpl<UserGamePreference>(this as UserGamePreference, _$identity);

  /// Serializes this UserGamePreference to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserGamePreference&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.gameId, gameId) || other.gameId == gameId)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.liked, liked) || other.liked == liked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.lastPlayed, lastPlayed) || other.lastPlayed == lastPlayed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,gameId,isFavorite,liked,isBookmarked,lastPlayed);

@override
String toString() {
  return 'UserGamePreference(userId: $userId, gameId: $gameId, isFavorite: $isFavorite, liked: $liked, isBookmarked: $isBookmarked, lastPlayed: $lastPlayed)';
}


}

/// @nodoc
abstract mixin class $UserGamePreferenceCopyWith<$Res>  {
  factory $UserGamePreferenceCopyWith(UserGamePreference value, $Res Function(UserGamePreference) _then) = _$UserGamePreferenceCopyWithImpl;
@useResult
$Res call({
 String userId, String gameId, bool isFavorite, bool liked, bool isBookmarked, DateTime? lastPlayed
});




}
/// @nodoc
class _$UserGamePreferenceCopyWithImpl<$Res>
    implements $UserGamePreferenceCopyWith<$Res> {
  _$UserGamePreferenceCopyWithImpl(this._self, this._then);

  final UserGamePreference _self;
  final $Res Function(UserGamePreference) _then;

/// Create a copy of UserGamePreference
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? gameId = null,Object? isFavorite = null,Object? liked = null,Object? isBookmarked = null,Object? lastPlayed = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,gameId: null == gameId ? _self.gameId : gameId // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,liked: null == liked ? _self.liked : liked // ignore: cast_nullable_to_non_nullable
as bool,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,lastPlayed: freezed == lastPlayed ? _self.lastPlayed : lastPlayed // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserGamePreference].
extension UserGamePreferencePatterns on UserGamePreference {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserGamePreference value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserGamePreference() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserGamePreference value)  $default,){
final _that = this;
switch (_that) {
case _UserGamePreference():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserGamePreference value)?  $default,){
final _that = this;
switch (_that) {
case _UserGamePreference() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String gameId,  bool isFavorite,  bool liked,  bool isBookmarked,  DateTime? lastPlayed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserGamePreference() when $default != null:
return $default(_that.userId,_that.gameId,_that.isFavorite,_that.liked,_that.isBookmarked,_that.lastPlayed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String gameId,  bool isFavorite,  bool liked,  bool isBookmarked,  DateTime? lastPlayed)  $default,) {final _that = this;
switch (_that) {
case _UserGamePreference():
return $default(_that.userId,_that.gameId,_that.isFavorite,_that.liked,_that.isBookmarked,_that.lastPlayed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String gameId,  bool isFavorite,  bool liked,  bool isBookmarked,  DateTime? lastPlayed)?  $default,) {final _that = this;
switch (_that) {
case _UserGamePreference() when $default != null:
return $default(_that.userId,_that.gameId,_that.isFavorite,_that.liked,_that.isBookmarked,_that.lastPlayed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserGamePreference implements UserGamePreference {
  const _UserGamePreference({required this.userId, required this.gameId, this.isFavorite = false, this.liked = false, this.isBookmarked = false, this.lastPlayed});
  factory _UserGamePreference.fromJson(Map<String, dynamic> json) => _$UserGamePreferenceFromJson(json);

@override final  String userId;
@override final  String gameId;
@override@JsonKey() final  bool isFavorite;
@override@JsonKey() final  bool liked;
@override@JsonKey() final  bool isBookmarked;
@override final  DateTime? lastPlayed;

/// Create a copy of UserGamePreference
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserGamePreferenceCopyWith<_UserGamePreference> get copyWith => __$UserGamePreferenceCopyWithImpl<_UserGamePreference>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserGamePreferenceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserGamePreference&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.gameId, gameId) || other.gameId == gameId)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.liked, liked) || other.liked == liked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.lastPlayed, lastPlayed) || other.lastPlayed == lastPlayed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,gameId,isFavorite,liked,isBookmarked,lastPlayed);

@override
String toString() {
  return 'UserGamePreference(userId: $userId, gameId: $gameId, isFavorite: $isFavorite, liked: $liked, isBookmarked: $isBookmarked, lastPlayed: $lastPlayed)';
}


}

/// @nodoc
abstract mixin class _$UserGamePreferenceCopyWith<$Res> implements $UserGamePreferenceCopyWith<$Res> {
  factory _$UserGamePreferenceCopyWith(_UserGamePreference value, $Res Function(_UserGamePreference) _then) = __$UserGamePreferenceCopyWithImpl;
@override @useResult
$Res call({
 String userId, String gameId, bool isFavorite, bool liked, bool isBookmarked, DateTime? lastPlayed
});




}
/// @nodoc
class __$UserGamePreferenceCopyWithImpl<$Res>
    implements _$UserGamePreferenceCopyWith<$Res> {
  __$UserGamePreferenceCopyWithImpl(this._self, this._then);

  final _UserGamePreference _self;
  final $Res Function(_UserGamePreference) _then;

/// Create a copy of UserGamePreference
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? gameId = null,Object? isFavorite = null,Object? liked = null,Object? isBookmarked = null,Object? lastPlayed = freezed,}) {
  return _then(_UserGamePreference(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,gameId: null == gameId ? _self.gameId : gameId // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,liked: null == liked ? _self.liked : liked // ignore: cast_nullable_to_non_nullable
as bool,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,lastPlayed: freezed == lastPlayed ? _self.lastPlayed : lastPlayed // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
