// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageModel {

 String get prompt; bool get isUser; DateTime get timestamp; List<String> get attachedFiles; GameDataModel? get gameData; GameModel? get gameModel;
/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageModelCopyWith<MessageModel> get copyWith => _$MessageModelCopyWithImpl<MessageModel>(this as MessageModel, _$identity);

  /// Serializes this MessageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageModel&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.isUser, isUser) || other.isUser == isUser)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other.attachedFiles, attachedFiles)&&(identical(other.gameData, gameData) || other.gameData == gameData)&&(identical(other.gameModel, gameModel) || other.gameModel == gameModel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prompt,isUser,timestamp,const DeepCollectionEquality().hash(attachedFiles),gameData,gameModel);

@override
String toString() {
  return 'MessageModel(prompt: $prompt, isUser: $isUser, timestamp: $timestamp, attachedFiles: $attachedFiles, gameData: $gameData, gameModel: $gameModel)';
}


}

/// @nodoc
abstract mixin class $MessageModelCopyWith<$Res>  {
  factory $MessageModelCopyWith(MessageModel value, $Res Function(MessageModel) _then) = _$MessageModelCopyWithImpl;
@useResult
$Res call({
 String prompt, bool isUser, DateTime timestamp, List<String> attachedFiles, GameDataModel? gameData, GameModel? gameModel
});


$GameDataModelCopyWith<$Res>? get gameData;$GameModelCopyWith<$Res>? get gameModel;

}
/// @nodoc
class _$MessageModelCopyWithImpl<$Res>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._self, this._then);

  final MessageModel _self;
  final $Res Function(MessageModel) _then;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prompt = null,Object? isUser = null,Object? timestamp = null,Object? attachedFiles = null,Object? gameData = freezed,Object? gameModel = freezed,}) {
  return _then(_self.copyWith(
prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,isUser: null == isUser ? _self.isUser : isUser // ignore: cast_nullable_to_non_nullable
as bool,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,attachedFiles: null == attachedFiles ? _self.attachedFiles : attachedFiles // ignore: cast_nullable_to_non_nullable
as List<String>,gameData: freezed == gameData ? _self.gameData : gameData // ignore: cast_nullable_to_non_nullable
as GameDataModel?,gameModel: freezed == gameModel ? _self.gameModel : gameModel // ignore: cast_nullable_to_non_nullable
as GameModel?,
  ));
}
/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameDataModelCopyWith<$Res>? get gameData {
    if (_self.gameData == null) {
    return null;
  }

  return $GameDataModelCopyWith<$Res>(_self.gameData!, (value) {
    return _then(_self.copyWith(gameData: value));
  });
}/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameModelCopyWith<$Res>? get gameModel {
    if (_self.gameModel == null) {
    return null;
  }

  return $GameModelCopyWith<$Res>(_self.gameModel!, (value) {
    return _then(_self.copyWith(gameModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [MessageModel].
extension MessageModelPatterns on MessageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageModel value)  $default,){
final _that = this;
switch (_that) {
case _MessageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageModel value)?  $default,){
final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String prompt,  bool isUser,  DateTime timestamp,  List<String> attachedFiles,  GameDataModel? gameData,  GameModel? gameModel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
return $default(_that.prompt,_that.isUser,_that.timestamp,_that.attachedFiles,_that.gameData,_that.gameModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String prompt,  bool isUser,  DateTime timestamp,  List<String> attachedFiles,  GameDataModel? gameData,  GameModel? gameModel)  $default,) {final _that = this;
switch (_that) {
case _MessageModel():
return $default(_that.prompt,_that.isUser,_that.timestamp,_that.attachedFiles,_that.gameData,_that.gameModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String prompt,  bool isUser,  DateTime timestamp,  List<String> attachedFiles,  GameDataModel? gameData,  GameModel? gameModel)?  $default,) {final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
return $default(_that.prompt,_that.isUser,_that.timestamp,_that.attachedFiles,_that.gameData,_that.gameModel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageModel implements MessageModel {
  const _MessageModel({required this.prompt, required this.isUser, required this.timestamp, final  List<String> attachedFiles = const [], this.gameData, this.gameModel}): _attachedFiles = attachedFiles;
  factory _MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

@override final  String prompt;
@override final  bool isUser;
@override final  DateTime timestamp;
 final  List<String> _attachedFiles;
@override@JsonKey() List<String> get attachedFiles {
  if (_attachedFiles is EqualUnmodifiableListView) return _attachedFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachedFiles);
}

@override final  GameDataModel? gameData;
@override final  GameModel? gameModel;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageModelCopyWith<_MessageModel> get copyWith => __$MessageModelCopyWithImpl<_MessageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageModel&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.isUser, isUser) || other.isUser == isUser)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other._attachedFiles, _attachedFiles)&&(identical(other.gameData, gameData) || other.gameData == gameData)&&(identical(other.gameModel, gameModel) || other.gameModel == gameModel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prompt,isUser,timestamp,const DeepCollectionEquality().hash(_attachedFiles),gameData,gameModel);

@override
String toString() {
  return 'MessageModel(prompt: $prompt, isUser: $isUser, timestamp: $timestamp, attachedFiles: $attachedFiles, gameData: $gameData, gameModel: $gameModel)';
}


}

/// @nodoc
abstract mixin class _$MessageModelCopyWith<$Res> implements $MessageModelCopyWith<$Res> {
  factory _$MessageModelCopyWith(_MessageModel value, $Res Function(_MessageModel) _then) = __$MessageModelCopyWithImpl;
@override @useResult
$Res call({
 String prompt, bool isUser, DateTime timestamp, List<String> attachedFiles, GameDataModel? gameData, GameModel? gameModel
});


@override $GameDataModelCopyWith<$Res>? get gameData;@override $GameModelCopyWith<$Res>? get gameModel;

}
/// @nodoc
class __$MessageModelCopyWithImpl<$Res>
    implements _$MessageModelCopyWith<$Res> {
  __$MessageModelCopyWithImpl(this._self, this._then);

  final _MessageModel _self;
  final $Res Function(_MessageModel) _then;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prompt = null,Object? isUser = null,Object? timestamp = null,Object? attachedFiles = null,Object? gameData = freezed,Object? gameModel = freezed,}) {
  return _then(_MessageModel(
prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,isUser: null == isUser ? _self.isUser : isUser // ignore: cast_nullable_to_non_nullable
as bool,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,attachedFiles: null == attachedFiles ? _self._attachedFiles : attachedFiles // ignore: cast_nullable_to_non_nullable
as List<String>,gameData: freezed == gameData ? _self.gameData : gameData // ignore: cast_nullable_to_non_nullable
as GameDataModel?,gameModel: freezed == gameModel ? _self.gameModel : gameModel // ignore: cast_nullable_to_non_nullable
as GameModel?,
  ));
}

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameDataModelCopyWith<$Res>? get gameData {
    if (_self.gameData == null) {
    return null;
  }

  return $GameDataModelCopyWith<$Res>(_self.gameData!, (value) {
    return _then(_self.copyWith(gameData: value));
  });
}/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameModelCopyWith<$Res>? get gameModel {
    if (_self.gameModel == null) {
    return null;
  }

  return $GameModelCopyWith<$Res>(_self.gameModel!, (value) {
    return _then(_self.copyWith(gameModel: value));
  });
}
}

// dart format on
