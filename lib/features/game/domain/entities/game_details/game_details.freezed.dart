// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GameDetails {
  GameModel get gameModel => throw _privateConstructorUsedError;
  GameAnalytics get analytics => throw _privateConstructorUsedError;
  GameDataModel get gameData =>
      throw _privateConstructorUsedError; // The actual AI-generated game
  UserGamePreference? get userPreference => throw _privateConstructorUsedError;
  List<String>? get relatedGameIds => throw _privateConstructorUsedError;

  /// Create a copy of GameDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameDetailsCopyWith<GameDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDetailsCopyWith<$Res> {
  factory $GameDetailsCopyWith(
    GameDetails value,
    $Res Function(GameDetails) then,
  ) = _$GameDetailsCopyWithImpl<$Res, GameDetails>;
  @useResult
  $Res call({
    GameModel gameModel,
    GameAnalytics analytics,
    GameDataModel gameData,
    UserGamePreference? userPreference,
    List<String>? relatedGameIds,
  });

  $GameModelCopyWith<$Res> get gameModel;
  $GameAnalyticsCopyWith<$Res> get analytics;
  $GameDataModelCopyWith<$Res> get gameData;
  $UserGamePreferenceCopyWith<$Res>? get userPreference;
}

/// @nodoc
class _$GameDetailsCopyWithImpl<$Res, $Val extends GameDetails>
    implements $GameDetailsCopyWith<$Res> {
  _$GameDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameModel = null,
    Object? analytics = null,
    Object? gameData = null,
    Object? userPreference = freezed,
    Object? relatedGameIds = freezed,
  }) {
    return _then(
      _value.copyWith(
            gameModel: null == gameModel
                ? _value.gameModel
                : gameModel // ignore: cast_nullable_to_non_nullable
                      as GameModel,
            analytics: null == analytics
                ? _value.analytics
                : analytics // ignore: cast_nullable_to_non_nullable
                      as GameAnalytics,
            gameData: null == gameData
                ? _value.gameData
                : gameData // ignore: cast_nullable_to_non_nullable
                      as GameDataModel,
            userPreference: freezed == userPreference
                ? _value.userPreference
                : userPreference // ignore: cast_nullable_to_non_nullable
                      as UserGamePreference?,
            relatedGameIds: freezed == relatedGameIds
                ? _value.relatedGameIds
                : relatedGameIds // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameModelCopyWith<$Res> get gameModel {
    return $GameModelCopyWith<$Res>(_value.gameModel, (value) {
      return _then(_value.copyWith(gameModel: value) as $Val);
    });
  }

  /// Create a copy of GameDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameAnalyticsCopyWith<$Res> get analytics {
    return $GameAnalyticsCopyWith<$Res>(_value.analytics, (value) {
      return _then(_value.copyWith(analytics: value) as $Val);
    });
  }

  /// Create a copy of GameDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameDataModelCopyWith<$Res> get gameData {
    return $GameDataModelCopyWith<$Res>(_value.gameData, (value) {
      return _then(_value.copyWith(gameData: value) as $Val);
    });
  }

  /// Create a copy of GameDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserGamePreferenceCopyWith<$Res>? get userPreference {
    if (_value.userPreference == null) {
      return null;
    }

    return $UserGamePreferenceCopyWith<$Res>(_value.userPreference!, (value) {
      return _then(_value.copyWith(userPreference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameDetailsImplCopyWith<$Res>
    implements $GameDetailsCopyWith<$Res> {
  factory _$$GameDetailsImplCopyWith(
    _$GameDetailsImpl value,
    $Res Function(_$GameDetailsImpl) then,
  ) = __$$GameDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    GameModel gameModel,
    GameAnalytics analytics,
    GameDataModel gameData,
    UserGamePreference? userPreference,
    List<String>? relatedGameIds,
  });

  @override
  $GameModelCopyWith<$Res> get gameModel;
  @override
  $GameAnalyticsCopyWith<$Res> get analytics;
  @override
  $GameDataModelCopyWith<$Res> get gameData;
  @override
  $UserGamePreferenceCopyWith<$Res>? get userPreference;
}

/// @nodoc
class __$$GameDetailsImplCopyWithImpl<$Res>
    extends _$GameDetailsCopyWithImpl<$Res, _$GameDetailsImpl>
    implements _$$GameDetailsImplCopyWith<$Res> {
  __$$GameDetailsImplCopyWithImpl(
    _$GameDetailsImpl _value,
    $Res Function(_$GameDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameModel = null,
    Object? analytics = null,
    Object? gameData = null,
    Object? userPreference = freezed,
    Object? relatedGameIds = freezed,
  }) {
    return _then(
      _$GameDetailsImpl(
        gameModel: null == gameModel
            ? _value.gameModel
            : gameModel // ignore: cast_nullable_to_non_nullable
                  as GameModel,
        analytics: null == analytics
            ? _value.analytics
            : analytics // ignore: cast_nullable_to_non_nullable
                  as GameAnalytics,
        gameData: null == gameData
            ? _value.gameData
            : gameData // ignore: cast_nullable_to_non_nullable
                  as GameDataModel,
        userPreference: freezed == userPreference
            ? _value.userPreference
            : userPreference // ignore: cast_nullable_to_non_nullable
                  as UserGamePreference?,
        relatedGameIds: freezed == relatedGameIds
            ? _value._relatedGameIds
            : relatedGameIds // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc

class _$GameDetailsImpl implements _GameDetails {
  const _$GameDetailsImpl({
    required this.gameModel,
    required this.analytics,
    required this.gameData,
    this.userPreference,
    final List<String>? relatedGameIds,
  }) : _relatedGameIds = relatedGameIds;

  @override
  final GameModel gameModel;
  @override
  final GameAnalytics analytics;
  @override
  final GameDataModel gameData;
  // The actual AI-generated game
  @override
  final UserGamePreference? userPreference;
  final List<String>? _relatedGameIds;
  @override
  List<String>? get relatedGameIds {
    final value = _relatedGameIds;
    if (value == null) return null;
    if (_relatedGameIds is EqualUnmodifiableListView) return _relatedGameIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GameDetails(gameModel: $gameModel, analytics: $analytics, gameData: $gameData, userPreference: $userPreference, relatedGameIds: $relatedGameIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameDetailsImpl &&
            (identical(other.gameModel, gameModel) ||
                other.gameModel == gameModel) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.gameData, gameData) ||
                other.gameData == gameData) &&
            (identical(other.userPreference, userPreference) ||
                other.userPreference == userPreference) &&
            const DeepCollectionEquality().equals(
              other._relatedGameIds,
              _relatedGameIds,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    gameModel,
    analytics,
    gameData,
    userPreference,
    const DeepCollectionEquality().hash(_relatedGameIds),
  );

  /// Create a copy of GameDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameDetailsImplCopyWith<_$GameDetailsImpl> get copyWith =>
      __$$GameDetailsImplCopyWithImpl<_$GameDetailsImpl>(this, _$identity);
}

abstract class _GameDetails implements GameDetails {
  const factory _GameDetails({
    required final GameModel gameModel,
    required final GameAnalytics analytics,
    required final GameDataModel gameData,
    final UserGamePreference? userPreference,
    final List<String>? relatedGameIds,
  }) = _$GameDetailsImpl;

  @override
  GameModel get gameModel;
  @override
  GameAnalytics get analytics;
  @override
  GameDataModel get gameData; // The actual AI-generated game
  @override
  UserGamePreference? get userPreference;
  @override
  List<String>? get relatedGameIds;

  /// Create a copy of GameDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameDetailsImplCopyWith<_$GameDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
