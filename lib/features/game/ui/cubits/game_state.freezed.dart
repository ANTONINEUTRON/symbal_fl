// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreateGameState _$CreateGameStateFromJson(Map<String, dynamic> json) {
  return _CreateGameState.fromJson(json);
}

/// @nodoc
mixin _$CreateGameState {
  List<MessageModel> get chatList => throw _privateConstructorUsedError;
  bool get isGenerating => throw _privateConstructorUsedError;
  bool get isDeploying => throw _privateConstructorUsedError;
  bool get isDraftSaved => throw _privateConstructorUsedError;
  bool get isDeployed => throw _privateConstructorUsedError;
  int get retriesCount => throw _privateConstructorUsedError;
  GameModel? get generatedGame => throw _privateConstructorUsedError;
  List<GameModel> get draftGames => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this CreateGameState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateGameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGameStateCopyWith<CreateGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameStateCopyWith<$Res> {
  factory $CreateGameStateCopyWith(
    CreateGameState value,
    $Res Function(CreateGameState) then,
  ) = _$CreateGameStateCopyWithImpl<$Res, CreateGameState>;
  @useResult
  $Res call({
    List<MessageModel> chatList,
    bool isGenerating,
    bool isDeploying,
    bool isDraftSaved,
    bool isDeployed,
    int retriesCount,
    GameModel? generatedGame,
    List<GameModel> draftGames,
    String? error,
  });

  $GameModelCopyWith<$Res>? get generatedGame;
}

/// @nodoc
class _$CreateGameStateCopyWithImpl<$Res, $Val extends CreateGameState>
    implements $CreateGameStateCopyWith<$Res> {
  _$CreateGameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatList = null,
    Object? isGenerating = null,
    Object? isDeploying = null,
    Object? isDraftSaved = null,
    Object? isDeployed = null,
    Object? retriesCount = null,
    Object? generatedGame = freezed,
    Object? draftGames = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            chatList: null == chatList
                ? _value.chatList
                : chatList // ignore: cast_nullable_to_non_nullable
                      as List<MessageModel>,
            isGenerating: null == isGenerating
                ? _value.isGenerating
                : isGenerating // ignore: cast_nullable_to_non_nullable
                      as bool,
            isDeploying: null == isDeploying
                ? _value.isDeploying
                : isDeploying // ignore: cast_nullable_to_non_nullable
                      as bool,
            isDraftSaved: null == isDraftSaved
                ? _value.isDraftSaved
                : isDraftSaved // ignore: cast_nullable_to_non_nullable
                      as bool,
            isDeployed: null == isDeployed
                ? _value.isDeployed
                : isDeployed // ignore: cast_nullable_to_non_nullable
                      as bool,
            retriesCount: null == retriesCount
                ? _value.retriesCount
                : retriesCount // ignore: cast_nullable_to_non_nullable
                      as int,
            generatedGame: freezed == generatedGame
                ? _value.generatedGame
                : generatedGame // ignore: cast_nullable_to_non_nullable
                      as GameModel?,
            draftGames: null == draftGames
                ? _value.draftGames
                : draftGames // ignore: cast_nullable_to_non_nullable
                      as List<GameModel>,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of CreateGameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameModelCopyWith<$Res>? get generatedGame {
    if (_value.generatedGame == null) {
      return null;
    }

    return $GameModelCopyWith<$Res>(_value.generatedGame!, (value) {
      return _then(_value.copyWith(generatedGame: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateGameStateImplCopyWith<$Res>
    implements $CreateGameStateCopyWith<$Res> {
  factory _$$CreateGameStateImplCopyWith(
    _$CreateGameStateImpl value,
    $Res Function(_$CreateGameStateImpl) then,
  ) = __$$CreateGameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<MessageModel> chatList,
    bool isGenerating,
    bool isDeploying,
    bool isDraftSaved,
    bool isDeployed,
    int retriesCount,
    GameModel? generatedGame,
    List<GameModel> draftGames,
    String? error,
  });

  @override
  $GameModelCopyWith<$Res>? get generatedGame;
}

/// @nodoc
class __$$CreateGameStateImplCopyWithImpl<$Res>
    extends _$CreateGameStateCopyWithImpl<$Res, _$CreateGameStateImpl>
    implements _$$CreateGameStateImplCopyWith<$Res> {
  __$$CreateGameStateImplCopyWithImpl(
    _$CreateGameStateImpl _value,
    $Res Function(_$CreateGameStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateGameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatList = null,
    Object? isGenerating = null,
    Object? isDeploying = null,
    Object? isDraftSaved = null,
    Object? isDeployed = null,
    Object? retriesCount = null,
    Object? generatedGame = freezed,
    Object? draftGames = null,
    Object? error = freezed,
  }) {
    return _then(
      _$CreateGameStateImpl(
        chatList: null == chatList
            ? _value._chatList
            : chatList // ignore: cast_nullable_to_non_nullable
                  as List<MessageModel>,
        isGenerating: null == isGenerating
            ? _value.isGenerating
            : isGenerating // ignore: cast_nullable_to_non_nullable
                  as bool,
        isDeploying: null == isDeploying
            ? _value.isDeploying
            : isDeploying // ignore: cast_nullable_to_non_nullable
                  as bool,
        isDraftSaved: null == isDraftSaved
            ? _value.isDraftSaved
            : isDraftSaved // ignore: cast_nullable_to_non_nullable
                  as bool,
        isDeployed: null == isDeployed
            ? _value.isDeployed
            : isDeployed // ignore: cast_nullable_to_non_nullable
                  as bool,
        retriesCount: null == retriesCount
            ? _value.retriesCount
            : retriesCount // ignore: cast_nullable_to_non_nullable
                  as int,
        generatedGame: freezed == generatedGame
            ? _value.generatedGame
            : generatedGame // ignore: cast_nullable_to_non_nullable
                  as GameModel?,
        draftGames: null == draftGames
            ? _value._draftGames
            : draftGames // ignore: cast_nullable_to_non_nullable
                  as List<GameModel>,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateGameStateImpl implements _CreateGameState {
  const _$CreateGameStateImpl({
    final List<MessageModel> chatList = const [],
    this.isGenerating = false,
    this.isDeploying = false,
    this.isDraftSaved = false,
    this.isDeployed = false,
    this.retriesCount = 3,
    this.generatedGame,
    final List<GameModel> draftGames = const [],
    this.error,
  }) : _chatList = chatList,
       _draftGames = draftGames;

  factory _$CreateGameStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateGameStateImplFromJson(json);

  final List<MessageModel> _chatList;
  @override
  @JsonKey()
  List<MessageModel> get chatList {
    if (_chatList is EqualUnmodifiableListView) return _chatList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatList);
  }

  @override
  @JsonKey()
  final bool isGenerating;
  @override
  @JsonKey()
  final bool isDeploying;
  @override
  @JsonKey()
  final bool isDraftSaved;
  @override
  @JsonKey()
  final bool isDeployed;
  @override
  @JsonKey()
  final int retriesCount;
  @override
  final GameModel? generatedGame;
  final List<GameModel> _draftGames;
  @override
  @JsonKey()
  List<GameModel> get draftGames {
    if (_draftGames is EqualUnmodifiableListView) return _draftGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_draftGames);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'CreateGameState(chatList: $chatList, isGenerating: $isGenerating, isDeploying: $isDeploying, isDraftSaved: $isDraftSaved, isDeployed: $isDeployed, retriesCount: $retriesCount, generatedGame: $generatedGame, draftGames: $draftGames, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGameStateImpl &&
            const DeepCollectionEquality().equals(other._chatList, _chatList) &&
            (identical(other.isGenerating, isGenerating) ||
                other.isGenerating == isGenerating) &&
            (identical(other.isDeploying, isDeploying) ||
                other.isDeploying == isDeploying) &&
            (identical(other.isDraftSaved, isDraftSaved) ||
                other.isDraftSaved == isDraftSaved) &&
            (identical(other.isDeployed, isDeployed) ||
                other.isDeployed == isDeployed) &&
            (identical(other.retriesCount, retriesCount) ||
                other.retriesCount == retriesCount) &&
            (identical(other.generatedGame, generatedGame) ||
                other.generatedGame == generatedGame) &&
            const DeepCollectionEquality().equals(
              other._draftGames,
              _draftGames,
            ) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_chatList),
    isGenerating,
    isDeploying,
    isDraftSaved,
    isDeployed,
    retriesCount,
    generatedGame,
    const DeepCollectionEquality().hash(_draftGames),
    error,
  );

  /// Create a copy of CreateGameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGameStateImplCopyWith<_$CreateGameStateImpl> get copyWith =>
      __$$CreateGameStateImplCopyWithImpl<_$CreateGameStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateGameStateImplToJson(this);
  }
}

abstract class _CreateGameState implements CreateGameState {
  const factory _CreateGameState({
    final List<MessageModel> chatList,
    final bool isGenerating,
    final bool isDeploying,
    final bool isDraftSaved,
    final bool isDeployed,
    final int retriesCount,
    final GameModel? generatedGame,
    final List<GameModel> draftGames,
    final String? error,
  }) = _$CreateGameStateImpl;

  factory _CreateGameState.fromJson(Map<String, dynamic> json) =
      _$CreateGameStateImpl.fromJson;

  @override
  List<MessageModel> get chatList;
  @override
  bool get isGenerating;
  @override
  bool get isDeploying;
  @override
  bool get isDraftSaved;
  @override
  bool get isDeployed;
  @override
  int get retriesCount;
  @override
  GameModel? get generatedGame;
  @override
  List<GameModel> get draftGames;
  @override
  String? get error;

  /// Create a copy of CreateGameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGameStateImplCopyWith<_$CreateGameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
