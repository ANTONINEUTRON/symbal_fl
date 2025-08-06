// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_analytics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GameAnalytics _$GameAnalyticsFromJson(Map<String, dynamic> json) {
  return _GameAnalytics.fromJson(json);
}

/// @nodoc
mixin _$GameAnalytics {
  String get gameId => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  int get plays => throw _privateConstructorUsedError;
  int get shares => throw _privateConstructorUsedError;
  int get comments => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this GameAnalytics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameAnalyticsCopyWith<GameAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameAnalyticsCopyWith<$Res> {
  factory $GameAnalyticsCopyWith(
    GameAnalytics value,
    $Res Function(GameAnalytics) then,
  ) = _$GameAnalyticsCopyWithImpl<$Res, GameAnalytics>;
  @useResult
  $Res call({
    String gameId,
    int likes,
    int plays,
    int shares,
    int comments,
    DateTime? lastUpdated,
  });
}

/// @nodoc
class _$GameAnalyticsCopyWithImpl<$Res, $Val extends GameAnalytics>
    implements $GameAnalyticsCopyWith<$Res> {
  _$GameAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? likes = null,
    Object? plays = null,
    Object? shares = null,
    Object? comments = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(
      _value.copyWith(
            gameId: null == gameId
                ? _value.gameId
                : gameId // ignore: cast_nullable_to_non_nullable
                      as String,
            likes: null == likes
                ? _value.likes
                : likes // ignore: cast_nullable_to_non_nullable
                      as int,
            plays: null == plays
                ? _value.plays
                : plays // ignore: cast_nullable_to_non_nullable
                      as int,
            shares: null == shares
                ? _value.shares
                : shares // ignore: cast_nullable_to_non_nullable
                      as int,
            comments: null == comments
                ? _value.comments
                : comments // ignore: cast_nullable_to_non_nullable
                      as int,
            lastUpdated: freezed == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GameAnalyticsImplCopyWith<$Res>
    implements $GameAnalyticsCopyWith<$Res> {
  factory _$$GameAnalyticsImplCopyWith(
    _$GameAnalyticsImpl value,
    $Res Function(_$GameAnalyticsImpl) then,
  ) = __$$GameAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String gameId,
    int likes,
    int plays,
    int shares,
    int comments,
    DateTime? lastUpdated,
  });
}

/// @nodoc
class __$$GameAnalyticsImplCopyWithImpl<$Res>
    extends _$GameAnalyticsCopyWithImpl<$Res, _$GameAnalyticsImpl>
    implements _$$GameAnalyticsImplCopyWith<$Res> {
  __$$GameAnalyticsImplCopyWithImpl(
    _$GameAnalyticsImpl _value,
    $Res Function(_$GameAnalyticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? likes = null,
    Object? plays = null,
    Object? shares = null,
    Object? comments = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(
      _$GameAnalyticsImpl(
        gameId: null == gameId
            ? _value.gameId
            : gameId // ignore: cast_nullable_to_non_nullable
                  as String,
        likes: null == likes
            ? _value.likes
            : likes // ignore: cast_nullable_to_non_nullable
                  as int,
        plays: null == plays
            ? _value.plays
            : plays // ignore: cast_nullable_to_non_nullable
                  as int,
        shares: null == shares
            ? _value.shares
            : shares // ignore: cast_nullable_to_non_nullable
                  as int,
        comments: null == comments
            ? _value.comments
            : comments // ignore: cast_nullable_to_non_nullable
                  as int,
        lastUpdated: freezed == lastUpdated
            ? _value.lastUpdated
            : lastUpdated // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GameAnalyticsImpl implements _GameAnalytics {
  const _$GameAnalyticsImpl({
    required this.gameId,
    this.likes = 0,
    this.plays = 0,
    this.shares = 0,
    this.comments = 0,
    this.lastUpdated,
  });

  factory _$GameAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameAnalyticsImplFromJson(json);

  @override
  final String gameId;
  @override
  @JsonKey()
  final int likes;
  @override
  @JsonKey()
  final int plays;
  @override
  @JsonKey()
  final int shares;
  @override
  @JsonKey()
  final int comments;
  @override
  final DateTime? lastUpdated;

  @override
  String toString() {
    return 'GameAnalytics(gameId: $gameId, likes: $likes, plays: $plays, shares: $shares, comments: $comments, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameAnalyticsImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.plays, plays) || other.plays == plays) &&
            (identical(other.shares, shares) || other.shares == shares) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    gameId,
    likes,
    plays,
    shares,
    comments,
    lastUpdated,
  );

  /// Create a copy of GameAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameAnalyticsImplCopyWith<_$GameAnalyticsImpl> get copyWith =>
      __$$GameAnalyticsImplCopyWithImpl<_$GameAnalyticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameAnalyticsImplToJson(this);
  }
}

abstract class _GameAnalytics implements GameAnalytics {
  const factory _GameAnalytics({
    required final String gameId,
    final int likes,
    final int plays,
    final int shares,
    final int comments,
    final DateTime? lastUpdated,
  }) = _$GameAnalyticsImpl;

  factory _GameAnalytics.fromJson(Map<String, dynamic> json) =
      _$GameAnalyticsImpl.fromJson;

  @override
  String get gameId;
  @override
  int get likes;
  @override
  int get plays;
  @override
  int get shares;
  @override
  int get comments;
  @override
  DateTime? get lastUpdated;

  /// Create a copy of GameAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameAnalyticsImplCopyWith<_$GameAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
