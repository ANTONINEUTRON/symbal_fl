// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameDetails {

 GameModel get gameModel; GameAnalytics get analytics; GameDataModel get gameData;// The actual AI-generated game
 UserGamePreference? get userPreference; List<String>? get relatedGameIds;
/// Create a copy of GameDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameDetailsCopyWith<GameDetails> get copyWith => _$GameDetailsCopyWithImpl<GameDetails>(this as GameDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameDetails&&(identical(other.gameModel, gameModel) || other.gameModel == gameModel)&&(identical(other.analytics, analytics) || other.analytics == analytics)&&(identical(other.gameData, gameData) || other.gameData == gameData)&&(identical(other.userPreference, userPreference) || other.userPreference == userPreference)&&const DeepCollectionEquality().equals(other.relatedGameIds, relatedGameIds));
}


@override
int get hashCode => Object.hash(runtimeType,gameModel,analytics,gameData,userPreference,const DeepCollectionEquality().hash(relatedGameIds));

@override
String toString() {
  return 'GameDetails(gameModel: $gameModel, analytics: $analytics, gameData: $gameData, userPreference: $userPreference, relatedGameIds: $relatedGameIds)';
}


}

/// @nodoc
abstract mixin class $GameDetailsCopyWith<$Res>  {
  factory $GameDetailsCopyWith(GameDetails value, $Res Function(GameDetails) _then) = _$GameDetailsCopyWithImpl;
@useResult
$Res call({
 GameModel gameModel, GameAnalytics analytics, GameDataModel gameData, UserGamePreference? userPreference, List<String>? relatedGameIds
});


$GameModelCopyWith<$Res> get gameModel;$GameAnalyticsCopyWith<$Res> get analytics;$GameDataModelCopyWith<$Res> get gameData;$UserGamePreferenceCopyWith<$Res>? get userPreference;

}
/// @nodoc
class _$GameDetailsCopyWithImpl<$Res>
    implements $GameDetailsCopyWith<$Res> {
  _$GameDetailsCopyWithImpl(this._self, this._then);

  final GameDetails _self;
  final $Res Function(GameDetails) _then;

/// Create a copy of GameDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gameModel = null,Object? analytics = null,Object? gameData = null,Object? userPreference = freezed,Object? relatedGameIds = freezed,}) {
  return _then(_self.copyWith(
gameModel: null == gameModel ? _self.gameModel : gameModel // ignore: cast_nullable_to_non_nullable
as GameModel,analytics: null == analytics ? _self.analytics : analytics // ignore: cast_nullable_to_non_nullable
as GameAnalytics,gameData: null == gameData ? _self.gameData : gameData // ignore: cast_nullable_to_non_nullable
as GameDataModel,userPreference: freezed == userPreference ? _self.userPreference : userPreference // ignore: cast_nullable_to_non_nullable
as UserGamePreference?,relatedGameIds: freezed == relatedGameIds ? _self.relatedGameIds : relatedGameIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of GameDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameModelCopyWith<$Res> get gameModel {
  
  return $GameModelCopyWith<$Res>(_self.gameModel, (value) {
    return _then(_self.copyWith(gameModel: value));
  });
}/// Create a copy of GameDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameAnalyticsCopyWith<$Res> get analytics {
  
  return $GameAnalyticsCopyWith<$Res>(_self.analytics, (value) {
    return _then(_self.copyWith(analytics: value));
  });
}/// Create a copy of GameDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameDataModelCopyWith<$Res> get gameData {
  
  return $GameDataModelCopyWith<$Res>(_self.gameData, (value) {
    return _then(_self.copyWith(gameData: value));
  });
}/// Create a copy of GameDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserGamePreferenceCopyWith<$Res>? get userPreference {
    if (_self.userPreference == null) {
    return null;
  }

  return $UserGamePreferenceCopyWith<$Res>(_self.userPreference!, (value) {
    return _then(_self.copyWith(userPreference: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameDetails].
extension GameDetailsPatterns on GameDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameDetails value)  $default,){
final _that = this;
switch (_that) {
case _GameDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameDetails value)?  $default,){
final _that = this;
switch (_that) {
case _GameDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GameModel gameModel,  GameAnalytics analytics,  GameDataModel gameData,  UserGamePreference? userPreference,  List<String>? relatedGameIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameDetails() when $default != null:
return $default(_that.gameModel,_that.analytics,_that.gameData,_that.userPreference,_that.relatedGameIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GameModel gameModel,  GameAnalytics analytics,  GameDataModel gameData,  UserGamePreference? userPreference,  List<String>? relatedGameIds)  $default,) {final _that = this;
switch (_that) {
case _GameDetails():
return $default(_that.gameModel,_that.analytics,_that.gameData,_that.userPreference,_that.relatedGameIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GameModel gameModel,  GameAnalytics analytics,  GameDataModel gameData,  UserGamePreference? userPreference,  List<String>? relatedGameIds)?  $default,) {final _that = this;
switch (_that) {
case _GameDetails() when $default != null:
return $default(_that.gameModel,_that.analytics,_that.gameData,_that.userPreference,_that.relatedGameIds);case _:
  return null;

}
}

}

/// @nodoc


class _GameDetails implements GameDetails {
  const _GameDetails({required this.gameModel, required this.analytics, required this.gameData, this.userPreference, final  List<String>? relatedGameIds}): _relatedGameIds = relatedGameIds;
  

@override final  GameModel gameModel;
@override final  GameAnalytics analytics;
@override final  GameDataModel gameData;
// The actual AI-generated game
@override final  UserGamePreference? userPreference;
 final  List<String>? _relatedGameIds;
@override List<String>? get relatedGameIds {
  final value = _relatedGameIds;
  if (value == null) return null;
  if (_relatedGameIds is EqualUnmodifiableListView) return _relatedGameIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GameDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameDetailsCopyWith<_GameDetails> get copyWith => __$GameDetailsCopyWithImpl<_GameDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameDetails&&(identical(other.gameModel, gameModel) || other.gameModel == gameModel)&&(identical(other.analytics, analytics) || other.analytics == analytics)&&(identical(other.gameData, gameData) || other.gameData == gameData)&&(identical(other.userPreference, userPreference) || other.userPreference == userPreference)&&const DeepCollectionEquality().equals(other._relatedGameIds, _relatedGameIds));
}


@override
int get hashCode => Object.hash(runtimeType,gameModel,analytics,gameData,userPreference,const DeepCollectionEquality().hash(_relatedGameIds));

@override
String toString() {
  return 'GameDetails(gameModel: $gameModel, analytics: $analytics, gameData: $gameData, userPreference: $userPreference, relatedGameIds: $relatedGameIds)';
}


}

/// @nodoc
abstract mixin class _$GameDetailsCopyWith<$Res> implements $GameDetailsCopyWith<$Res> {
  factory _$GameDetailsCopyWith(_GameDetails value, $Res Function(_GameDetails) _then) = __$GameDetailsCopyWithImpl;
@override @useResult
$Res call({
 GameModel gameModel, GameAnalytics analytics, GameDataModel gameData, UserGamePreference? userPreference, List<String>? relatedGameIds
});


@override $GameModelCopyWith<$Res> get gameModel;@override $GameAnalyticsCopyWith<$Res> get analytics;@override $GameDataModelCopyWith<$Res> get gameData;@override $UserGamePreferenceCopyWith<$Res>? get userPreference;

}
/// @nodoc
class __$GameDetailsCopyWithImpl<$Res>
    implements _$GameDetailsCopyWith<$Res> {
  __$GameDetailsCopyWithImpl(this._self, this._then);

  final _GameDetails _self;
  final $Res Function(_GameDetails) _then;

/// Create a copy of GameDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gameModel = null,Object? analytics = null,Object? gameData = null,Object? userPreference = freezed,Object? relatedGameIds = freezed,}) {
  return _then(_GameDetails(
gameModel: null == gameModel ? _self.gameModel : gameModel // ignore: cast_nullable_to_non_nullable
as GameModel,analytics: null == analytics ? _self.analytics : analytics // ignore: cast_nullable_to_non_nullable
as GameAnalytics,gameData: null == gameData ? _self.gameData : gameData // ignore: cast_nullable_to_non_nullable
as GameDataModel,userPreference: freezed == userPreference ? _self.userPreference : userPreference // ignore: cast_nullable_to_non_nullable
as UserGamePreference?,relatedGameIds: freezed == relatedGameIds ? _self._relatedGameIds : relatedGameIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of GameDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameModelCopyWith<$Res> get gameModel {
  
  return $GameModelCopyWith<$Res>(_self.gameModel, (value) {
    return _then(_self.copyWith(gameModel: value));
  });
}/// Create a copy of GameDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameAnalyticsCopyWith<$Res> get analytics {
  
  return $GameAnalyticsCopyWith<$Res>(_self.analytics, (value) {
    return _then(_self.copyWith(analytics: value));
  });
}/// Create a copy of GameDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameDataModelCopyWith<$Res> get gameData {
  
  return $GameDataModelCopyWith<$Res>(_self.gameData, (value) {
    return _then(_self.copyWith(gameData: value));
  });
}/// Create a copy of GameDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserGamePreferenceCopyWith<$Res>? get userPreference {
    if (_self.userPreference == null) {
    return null;
  }

  return $UserGamePreferenceCopyWith<$Res>(_self.userPreference!, (value) {
    return _then(_self.copyWith(userPreference: value));
  });
}
}

// dart format on
