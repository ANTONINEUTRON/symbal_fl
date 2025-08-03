// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateGameState {

 List<MessageModel> get chatList; bool get isGenerating; bool get isDeploying; bool get isDraftSaved; bool get isDeployed; int get retriesCount; GameModel? get generatedGame; List<GameModel> get draftGames; String? get error;
/// Create a copy of CreateGameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGameStateCopyWith<CreateGameState> get copyWith => _$CreateGameStateCopyWithImpl<CreateGameState>(this as CreateGameState, _$identity);

  /// Serializes this CreateGameState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGameState&&const DeepCollectionEquality().equals(other.chatList, chatList)&&(identical(other.isGenerating, isGenerating) || other.isGenerating == isGenerating)&&(identical(other.isDeploying, isDeploying) || other.isDeploying == isDeploying)&&(identical(other.isDraftSaved, isDraftSaved) || other.isDraftSaved == isDraftSaved)&&(identical(other.isDeployed, isDeployed) || other.isDeployed == isDeployed)&&(identical(other.retriesCount, retriesCount) || other.retriesCount == retriesCount)&&(identical(other.generatedGame, generatedGame) || other.generatedGame == generatedGame)&&const DeepCollectionEquality().equals(other.draftGames, draftGames)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(chatList),isGenerating,isDeploying,isDraftSaved,isDeployed,retriesCount,generatedGame,const DeepCollectionEquality().hash(draftGames),error);

@override
String toString() {
  return 'CreateGameState(chatList: $chatList, isGenerating: $isGenerating, isDeploying: $isDeploying, isDraftSaved: $isDraftSaved, isDeployed: $isDeployed, retriesCount: $retriesCount, generatedGame: $generatedGame, draftGames: $draftGames, error: $error)';
}


}

/// @nodoc
abstract mixin class $CreateGameStateCopyWith<$Res>  {
  factory $CreateGameStateCopyWith(CreateGameState value, $Res Function(CreateGameState) _then) = _$CreateGameStateCopyWithImpl;
@useResult
$Res call({
 List<MessageModel> chatList, bool isGenerating, bool isDeploying, bool isDraftSaved, bool isDeployed, int retriesCount, GameModel? generatedGame, List<GameModel> draftGames, String? error
});


$GameModelCopyWith<$Res>? get generatedGame;

}
/// @nodoc
class _$CreateGameStateCopyWithImpl<$Res>
    implements $CreateGameStateCopyWith<$Res> {
  _$CreateGameStateCopyWithImpl(this._self, this._then);

  final CreateGameState _self;
  final $Res Function(CreateGameState) _then;

/// Create a copy of CreateGameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatList = null,Object? isGenerating = null,Object? isDeploying = null,Object? isDraftSaved = null,Object? isDeployed = null,Object? retriesCount = null,Object? generatedGame = freezed,Object? draftGames = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
chatList: null == chatList ? _self.chatList : chatList // ignore: cast_nullable_to_non_nullable
as List<MessageModel>,isGenerating: null == isGenerating ? _self.isGenerating : isGenerating // ignore: cast_nullable_to_non_nullable
as bool,isDeploying: null == isDeploying ? _self.isDeploying : isDeploying // ignore: cast_nullable_to_non_nullable
as bool,isDraftSaved: null == isDraftSaved ? _self.isDraftSaved : isDraftSaved // ignore: cast_nullable_to_non_nullable
as bool,isDeployed: null == isDeployed ? _self.isDeployed : isDeployed // ignore: cast_nullable_to_non_nullable
as bool,retriesCount: null == retriesCount ? _self.retriesCount : retriesCount // ignore: cast_nullable_to_non_nullable
as int,generatedGame: freezed == generatedGame ? _self.generatedGame : generatedGame // ignore: cast_nullable_to_non_nullable
as GameModel?,draftGames: null == draftGames ? _self.draftGames : draftGames // ignore: cast_nullable_to_non_nullable
as List<GameModel>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CreateGameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameModelCopyWith<$Res>? get generatedGame {
    if (_self.generatedGame == null) {
    return null;
  }

  return $GameModelCopyWith<$Res>(_self.generatedGame!, (value) {
    return _then(_self.copyWith(generatedGame: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateGameState].
extension CreateGameStatePatterns on CreateGameState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateGameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateGameState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateGameState value)  $default,){
final _that = this;
switch (_that) {
case _CreateGameState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateGameState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateGameState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MessageModel> chatList,  bool isGenerating,  bool isDeploying,  bool isDraftSaved,  bool isDeployed,  int retriesCount,  GameModel? generatedGame,  List<GameModel> draftGames,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateGameState() when $default != null:
return $default(_that.chatList,_that.isGenerating,_that.isDeploying,_that.isDraftSaved,_that.isDeployed,_that.retriesCount,_that.generatedGame,_that.draftGames,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MessageModel> chatList,  bool isGenerating,  bool isDeploying,  bool isDraftSaved,  bool isDeployed,  int retriesCount,  GameModel? generatedGame,  List<GameModel> draftGames,  String? error)  $default,) {final _that = this;
switch (_that) {
case _CreateGameState():
return $default(_that.chatList,_that.isGenerating,_that.isDeploying,_that.isDraftSaved,_that.isDeployed,_that.retriesCount,_that.generatedGame,_that.draftGames,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MessageModel> chatList,  bool isGenerating,  bool isDeploying,  bool isDraftSaved,  bool isDeployed,  int retriesCount,  GameModel? generatedGame,  List<GameModel> draftGames,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _CreateGameState() when $default != null:
return $default(_that.chatList,_that.isGenerating,_that.isDeploying,_that.isDraftSaved,_that.isDeployed,_that.retriesCount,_that.generatedGame,_that.draftGames,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateGameState implements CreateGameState {
  const _CreateGameState({final  List<MessageModel> chatList = const [], this.isGenerating = false, this.isDeploying = false, this.isDraftSaved = false, this.isDeployed = false, this.retriesCount = 3, this.generatedGame, final  List<GameModel> draftGames = const [], this.error}): _chatList = chatList,_draftGames = draftGames;
  factory _CreateGameState.fromJson(Map<String, dynamic> json) => _$CreateGameStateFromJson(json);

 final  List<MessageModel> _chatList;
@override@JsonKey() List<MessageModel> get chatList {
  if (_chatList is EqualUnmodifiableListView) return _chatList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chatList);
}

@override@JsonKey() final  bool isGenerating;
@override@JsonKey() final  bool isDeploying;
@override@JsonKey() final  bool isDraftSaved;
@override@JsonKey() final  bool isDeployed;
@override@JsonKey() final  int retriesCount;
@override final  GameModel? generatedGame;
 final  List<GameModel> _draftGames;
@override@JsonKey() List<GameModel> get draftGames {
  if (_draftGames is EqualUnmodifiableListView) return _draftGames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_draftGames);
}

@override final  String? error;

/// Create a copy of CreateGameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGameStateCopyWith<_CreateGameState> get copyWith => __$CreateGameStateCopyWithImpl<_CreateGameState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateGameStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGameState&&const DeepCollectionEquality().equals(other._chatList, _chatList)&&(identical(other.isGenerating, isGenerating) || other.isGenerating == isGenerating)&&(identical(other.isDeploying, isDeploying) || other.isDeploying == isDeploying)&&(identical(other.isDraftSaved, isDraftSaved) || other.isDraftSaved == isDraftSaved)&&(identical(other.isDeployed, isDeployed) || other.isDeployed == isDeployed)&&(identical(other.retriesCount, retriesCount) || other.retriesCount == retriesCount)&&(identical(other.generatedGame, generatedGame) || other.generatedGame == generatedGame)&&const DeepCollectionEquality().equals(other._draftGames, _draftGames)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chatList),isGenerating,isDeploying,isDraftSaved,isDeployed,retriesCount,generatedGame,const DeepCollectionEquality().hash(_draftGames),error);

@override
String toString() {
  return 'CreateGameState(chatList: $chatList, isGenerating: $isGenerating, isDeploying: $isDeploying, isDraftSaved: $isDraftSaved, isDeployed: $isDeployed, retriesCount: $retriesCount, generatedGame: $generatedGame, draftGames: $draftGames, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CreateGameStateCopyWith<$Res> implements $CreateGameStateCopyWith<$Res> {
  factory _$CreateGameStateCopyWith(_CreateGameState value, $Res Function(_CreateGameState) _then) = __$CreateGameStateCopyWithImpl;
@override @useResult
$Res call({
 List<MessageModel> chatList, bool isGenerating, bool isDeploying, bool isDraftSaved, bool isDeployed, int retriesCount, GameModel? generatedGame, List<GameModel> draftGames, String? error
});


@override $GameModelCopyWith<$Res>? get generatedGame;

}
/// @nodoc
class __$CreateGameStateCopyWithImpl<$Res>
    implements _$CreateGameStateCopyWith<$Res> {
  __$CreateGameStateCopyWithImpl(this._self, this._then);

  final _CreateGameState _self;
  final $Res Function(_CreateGameState) _then;

/// Create a copy of CreateGameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatList = null,Object? isGenerating = null,Object? isDeploying = null,Object? isDraftSaved = null,Object? isDeployed = null,Object? retriesCount = null,Object? generatedGame = freezed,Object? draftGames = null,Object? error = freezed,}) {
  return _then(_CreateGameState(
chatList: null == chatList ? _self._chatList : chatList // ignore: cast_nullable_to_non_nullable
as List<MessageModel>,isGenerating: null == isGenerating ? _self.isGenerating : isGenerating // ignore: cast_nullable_to_non_nullable
as bool,isDeploying: null == isDeploying ? _self.isDeploying : isDeploying // ignore: cast_nullable_to_non_nullable
as bool,isDraftSaved: null == isDraftSaved ? _self.isDraftSaved : isDraftSaved // ignore: cast_nullable_to_non_nullable
as bool,isDeployed: null == isDeployed ? _self.isDeployed : isDeployed // ignore: cast_nullable_to_non_nullable
as bool,retriesCount: null == retriesCount ? _self.retriesCount : retriesCount // ignore: cast_nullable_to_non_nullable
as int,generatedGame: freezed == generatedGame ? _self.generatedGame : generatedGame // ignore: cast_nullable_to_non_nullable
as GameModel?,draftGames: null == draftGames ? _self._draftGames : draftGames // ignore: cast_nullable_to_non_nullable
as List<GameModel>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CreateGameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameModelCopyWith<$Res>? get generatedGame {
    if (_self.generatedGame == null) {
    return null;
  }

  return $GameModelCopyWith<$Res>(_self.generatedGame!, (value) {
    return _then(_self.copyWith(generatedGame: value));
  });
}
}

// dart format on
