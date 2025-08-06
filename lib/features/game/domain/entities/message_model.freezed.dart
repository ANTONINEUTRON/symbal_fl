// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  String get prompt => throw _privateConstructorUsedError;
  bool get isUser => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<String> get attachedFiles => throw _privateConstructorUsedError;
  GameDataModel? get gameData => throw _privateConstructorUsedError;
  GameModel? get gameModel => throw _privateConstructorUsedError;

  /// Serializes this MessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
    MessageModel value,
    $Res Function(MessageModel) then,
  ) = _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call({
    String prompt,
    bool isUser,
    DateTime timestamp,
    List<String> attachedFiles,
    GameDataModel? gameData,
    GameModel? gameModel,
  });

  $GameDataModelCopyWith<$Res>? get gameData;
  $GameModelCopyWith<$Res>? get gameModel;
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? isUser = null,
    Object? timestamp = null,
    Object? attachedFiles = null,
    Object? gameData = freezed,
    Object? gameModel = freezed,
  }) {
    return _then(
      _value.copyWith(
            prompt: null == prompt
                ? _value.prompt
                : prompt // ignore: cast_nullable_to_non_nullable
                      as String,
            isUser: null == isUser
                ? _value.isUser
                : isUser // ignore: cast_nullable_to_non_nullable
                      as bool,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            attachedFiles: null == attachedFiles
                ? _value.attachedFiles
                : attachedFiles // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            gameData: freezed == gameData
                ? _value.gameData
                : gameData // ignore: cast_nullable_to_non_nullable
                      as GameDataModel?,
            gameModel: freezed == gameModel
                ? _value.gameModel
                : gameModel // ignore: cast_nullable_to_non_nullable
                      as GameModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameDataModelCopyWith<$Res>? get gameData {
    if (_value.gameData == null) {
      return null;
    }

    return $GameDataModelCopyWith<$Res>(_value.gameData!, (value) {
      return _then(_value.copyWith(gameData: value) as $Val);
    });
  }

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameModelCopyWith<$Res>? get gameModel {
    if (_value.gameModel == null) {
      return null;
    }

    return $GameModelCopyWith<$Res>(_value.gameModel!, (value) {
      return _then(_value.copyWith(gameModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageModelImplCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$MessageModelImplCopyWith(
    _$MessageModelImpl value,
    $Res Function(_$MessageModelImpl) then,
  ) = __$$MessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String prompt,
    bool isUser,
    DateTime timestamp,
    List<String> attachedFiles,
    GameDataModel? gameData,
    GameModel? gameModel,
  });

  @override
  $GameDataModelCopyWith<$Res>? get gameData;
  @override
  $GameModelCopyWith<$Res>? get gameModel;
}

/// @nodoc
class __$$MessageModelImplCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$MessageModelImpl>
    implements _$$MessageModelImplCopyWith<$Res> {
  __$$MessageModelImplCopyWithImpl(
    _$MessageModelImpl _value,
    $Res Function(_$MessageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? isUser = null,
    Object? timestamp = null,
    Object? attachedFiles = null,
    Object? gameData = freezed,
    Object? gameModel = freezed,
  }) {
    return _then(
      _$MessageModelImpl(
        prompt: null == prompt
            ? _value.prompt
            : prompt // ignore: cast_nullable_to_non_nullable
                  as String,
        isUser: null == isUser
            ? _value.isUser
            : isUser // ignore: cast_nullable_to_non_nullable
                  as bool,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        attachedFiles: null == attachedFiles
            ? _value._attachedFiles
            : attachedFiles // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        gameData: freezed == gameData
            ? _value.gameData
            : gameData // ignore: cast_nullable_to_non_nullable
                  as GameDataModel?,
        gameModel: freezed == gameModel
            ? _value.gameModel
            : gameModel // ignore: cast_nullable_to_non_nullable
                  as GameModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageModelImpl implements _MessageModel {
  const _$MessageModelImpl({
    required this.prompt,
    required this.isUser,
    required this.timestamp,
    final List<String> attachedFiles = const [],
    this.gameData,
    this.gameModel,
  }) : _attachedFiles = attachedFiles;

  factory _$MessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageModelImplFromJson(json);

  @override
  final String prompt;
  @override
  final bool isUser;
  @override
  final DateTime timestamp;
  final List<String> _attachedFiles;
  @override
  @JsonKey()
  List<String> get attachedFiles {
    if (_attachedFiles is EqualUnmodifiableListView) return _attachedFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachedFiles);
  }

  @override
  final GameDataModel? gameData;
  @override
  final GameModel? gameModel;

  @override
  String toString() {
    return 'MessageModel(prompt: $prompt, isUser: $isUser, timestamp: $timestamp, attachedFiles: $attachedFiles, gameData: $gameData, gameModel: $gameModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageModelImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.isUser, isUser) || other.isUser == isUser) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(
              other._attachedFiles,
              _attachedFiles,
            ) &&
            (identical(other.gameData, gameData) ||
                other.gameData == gameData) &&
            (identical(other.gameModel, gameModel) ||
                other.gameModel == gameModel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    prompt,
    isUser,
    timestamp,
    const DeepCollectionEquality().hash(_attachedFiles),
    gameData,
    gameModel,
  );

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      __$$MessageModelImplCopyWithImpl<_$MessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageModelImplToJson(this);
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel({
    required final String prompt,
    required final bool isUser,
    required final DateTime timestamp,
    final List<String> attachedFiles,
    final GameDataModel? gameData,
    final GameModel? gameModel,
  }) = _$MessageModelImpl;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$MessageModelImpl.fromJson;

  @override
  String get prompt;
  @override
  bool get isUser;
  @override
  DateTime get timestamp;
  @override
  List<String> get attachedFiles;
  @override
  GameDataModel? get gameData;
  @override
  GameModel? get gameModel;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
