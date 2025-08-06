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

GameState _$GameStateFromJson(Map<String, dynamic> json) {
  return _GameState.fromJson(json);
}

/// @nodoc
mixin _$GameState {
  List<MessageModel> get chatList => throw _privateConstructorUsedError;
  bool get isGenerating => throw _privateConstructorUsedError;
  bool get isDeploying => throw _privateConstructorUsedError;
  bool get isDraftSaved => throw _privateConstructorUsedError;
  bool get isDeployed => throw _privateConstructorUsedError;
  int get retriesCount => throw _privateConstructorUsedError;
  GameModel? get generatedGame => throw _privateConstructorUsedError;
  List<GameModel> get draftGames => throw _privateConstructorUsedError;
  List<GameModel> get deployedGames => throw _privateConstructorUsedError;
  bool get isLoadingDeployedGames => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get selectedGameId => throw _privateConstructorUsedError;

  /// Serializes this GameState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
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
    List<GameModel> deployedGames,
    bool isLoadingDeployedGames,
    String? error,
    String? selectedGameId,
  });

  $GameModelCopyWith<$Res>? get generatedGame;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
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
    Object? deployedGames = null,
    Object? isLoadingDeployedGames = null,
    Object? error = freezed,
    Object? selectedGameId = freezed,
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
            deployedGames: null == deployedGames
                ? _value.deployedGames
                : deployedGames // ignore: cast_nullable_to_non_nullable
                      as List<GameModel>,
            isLoadingDeployedGames: null == isLoadingDeployedGames
                ? _value.isLoadingDeployedGames
                : isLoadingDeployedGames // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            selectedGameId: freezed == selectedGameId
                ? _value.selectedGameId
                : selectedGameId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameState
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
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
    _$GameStateImpl value,
    $Res Function(_$GameStateImpl) then,
  ) = __$$GameStateImplCopyWithImpl<$Res>;
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
    List<GameModel> deployedGames,
    bool isLoadingDeployedGames,
    String? error,
    String? selectedGameId,
  });

  @override
  $GameModelCopyWith<$Res>? get generatedGame;
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
    _$GameStateImpl _value,
    $Res Function(_$GameStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameState
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
    Object? deployedGames = null,
    Object? isLoadingDeployedGames = null,
    Object? error = freezed,
    Object? selectedGameId = freezed,
  }) {
    return _then(
      _$GameStateImpl(
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
        deployedGames: null == deployedGames
            ? _value._deployedGames
            : deployedGames // ignore: cast_nullable_to_non_nullable
                  as List<GameModel>,
        isLoadingDeployedGames: null == isLoadingDeployedGames
            ? _value.isLoadingDeployedGames
            : isLoadingDeployedGames // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        selectedGameId: freezed == selectedGameId
            ? _value.selectedGameId
            : selectedGameId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GameStateImpl implements _GameState {
  const _$GameStateImpl({
    final List<MessageModel> chatList = const [],
    this.isGenerating = false,
    this.isDeploying = false,
    this.isDraftSaved = false,
    this.isDeployed = false,
    this.retriesCount = 3,
    this.generatedGame,
    final List<GameModel> draftGames = const [],
    final List<GameModel> deployedGames = const [],
    this.isLoadingDeployedGames = false,
    this.error,
    this.selectedGameId,
  }) : _chatList = chatList,
       _draftGames = draftGames,
       _deployedGames = deployedGames;

  factory _$GameStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameStateImplFromJson(json);

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

  final List<GameModel> _deployedGames;
  @override
  @JsonKey()
  List<GameModel> get deployedGames {
    if (_deployedGames is EqualUnmodifiableListView) return _deployedGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deployedGames);
  }

  @override
  @JsonKey()
  final bool isLoadingDeployedGames;
  @override
  final String? error;
  @override
  final String? selectedGameId;

  @override
  String toString() {
    return 'GameState(chatList: $chatList, isGenerating: $isGenerating, isDeploying: $isDeploying, isDraftSaved: $isDraftSaved, isDeployed: $isDeployed, retriesCount: $retriesCount, generatedGame: $generatedGame, draftGames: $draftGames, deployedGames: $deployedGames, isLoadingDeployedGames: $isLoadingDeployedGames, error: $error, selectedGameId: $selectedGameId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
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
            const DeepCollectionEquality().equals(
              other._deployedGames,
              _deployedGames,
            ) &&
            (identical(other.isLoadingDeployedGames, isLoadingDeployedGames) ||
                other.isLoadingDeployedGames == isLoadingDeployedGames) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedGameId, selectedGameId) ||
                other.selectedGameId == selectedGameId));
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
    const DeepCollectionEquality().hash(_deployedGames),
    isLoadingDeployedGames,
    error,
    selectedGameId,
  );

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameStateImplToJson(this);
  }
}

abstract class _GameState implements GameState {
  const factory _GameState({
    final List<MessageModel> chatList,
    final bool isGenerating,
    final bool isDeploying,
    final bool isDraftSaved,
    final bool isDeployed,
    final int retriesCount,
    final GameModel? generatedGame,
    final List<GameModel> draftGames,
    final List<GameModel> deployedGames,
    final bool isLoadingDeployedGames,
    final String? error,
    final String? selectedGameId,
  }) = _$GameStateImpl;

  factory _GameState.fromJson(Map<String, dynamic> json) =
      _$GameStateImpl.fromJson;

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
  List<GameModel> get deployedGames;
  @override
  bool get isLoadingDeployedGames;
  @override
  String? get error;
  @override
  String? get selectedGameId;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
