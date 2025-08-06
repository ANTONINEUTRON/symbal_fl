// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_game_preference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserGamePreference _$UserGamePreferenceFromJson(Map<String, dynamic> json) {
  return _UserGamePreference.fromJson(json);
}

/// @nodoc
mixin _$UserGamePreference {
  String get userId => throw _privateConstructorUsedError;
  String get gameId => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  bool get liked => throw _privateConstructorUsedError;
  bool get isBookmarked => throw _privateConstructorUsedError;
  DateTime? get lastPlayed => throw _privateConstructorUsedError;

  /// Serializes this UserGamePreference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserGamePreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserGamePreferenceCopyWith<UserGamePreference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGamePreferenceCopyWith<$Res> {
  factory $UserGamePreferenceCopyWith(
    UserGamePreference value,
    $Res Function(UserGamePreference) then,
  ) = _$UserGamePreferenceCopyWithImpl<$Res, UserGamePreference>;
  @useResult
  $Res call({
    String userId,
    String gameId,
    bool isFavorite,
    bool liked,
    bool isBookmarked,
    DateTime? lastPlayed,
  });
}

/// @nodoc
class _$UserGamePreferenceCopyWithImpl<$Res, $Val extends UserGamePreference>
    implements $UserGamePreferenceCopyWith<$Res> {
  _$UserGamePreferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserGamePreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? gameId = null,
    Object? isFavorite = null,
    Object? liked = null,
    Object? isBookmarked = null,
    Object? lastPlayed = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            gameId: null == gameId
                ? _value.gameId
                : gameId // ignore: cast_nullable_to_non_nullable
                      as String,
            isFavorite: null == isFavorite
                ? _value.isFavorite
                : isFavorite // ignore: cast_nullable_to_non_nullable
                      as bool,
            liked: null == liked
                ? _value.liked
                : liked // ignore: cast_nullable_to_non_nullable
                      as bool,
            isBookmarked: null == isBookmarked
                ? _value.isBookmarked
                : isBookmarked // ignore: cast_nullable_to_non_nullable
                      as bool,
            lastPlayed: freezed == lastPlayed
                ? _value.lastPlayed
                : lastPlayed // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserGamePreferenceImplCopyWith<$Res>
    implements $UserGamePreferenceCopyWith<$Res> {
  factory _$$UserGamePreferenceImplCopyWith(
    _$UserGamePreferenceImpl value,
    $Res Function(_$UserGamePreferenceImpl) then,
  ) = __$$UserGamePreferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String gameId,
    bool isFavorite,
    bool liked,
    bool isBookmarked,
    DateTime? lastPlayed,
  });
}

/// @nodoc
class __$$UserGamePreferenceImplCopyWithImpl<$Res>
    extends _$UserGamePreferenceCopyWithImpl<$Res, _$UserGamePreferenceImpl>
    implements _$$UserGamePreferenceImplCopyWith<$Res> {
  __$$UserGamePreferenceImplCopyWithImpl(
    _$UserGamePreferenceImpl _value,
    $Res Function(_$UserGamePreferenceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserGamePreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? gameId = null,
    Object? isFavorite = null,
    Object? liked = null,
    Object? isBookmarked = null,
    Object? lastPlayed = freezed,
  }) {
    return _then(
      _$UserGamePreferenceImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        gameId: null == gameId
            ? _value.gameId
            : gameId // ignore: cast_nullable_to_non_nullable
                  as String,
        isFavorite: null == isFavorite
            ? _value.isFavorite
            : isFavorite // ignore: cast_nullable_to_non_nullable
                  as bool,
        liked: null == liked
            ? _value.liked
            : liked // ignore: cast_nullable_to_non_nullable
                  as bool,
        isBookmarked: null == isBookmarked
            ? _value.isBookmarked
            : isBookmarked // ignore: cast_nullable_to_non_nullable
                  as bool,
        lastPlayed: freezed == lastPlayed
            ? _value.lastPlayed
            : lastPlayed // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserGamePreferenceImpl implements _UserGamePreference {
  const _$UserGamePreferenceImpl({
    required this.userId,
    required this.gameId,
    this.isFavorite = false,
    this.liked = false,
    this.isBookmarked = false,
    this.lastPlayed,
  });

  factory _$UserGamePreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserGamePreferenceImplFromJson(json);

  @override
  final String userId;
  @override
  final String gameId;
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final bool liked;
  @override
  @JsonKey()
  final bool isBookmarked;
  @override
  final DateTime? lastPlayed;

  @override
  String toString() {
    return 'UserGamePreference(userId: $userId, gameId: $gameId, isFavorite: $isFavorite, liked: $liked, isBookmarked: $isBookmarked, lastPlayed: $lastPlayed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGamePreferenceImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.lastPlayed, lastPlayed) ||
                other.lastPlayed == lastPlayed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    gameId,
    isFavorite,
    liked,
    isBookmarked,
    lastPlayed,
  );

  /// Create a copy of UserGamePreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGamePreferenceImplCopyWith<_$UserGamePreferenceImpl> get copyWith =>
      __$$UserGamePreferenceImplCopyWithImpl<_$UserGamePreferenceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGamePreferenceImplToJson(this);
  }
}

abstract class _UserGamePreference implements UserGamePreference {
  const factory _UserGamePreference({
    required final String userId,
    required final String gameId,
    final bool isFavorite,
    final bool liked,
    final bool isBookmarked,
    final DateTime? lastPlayed,
  }) = _$UserGamePreferenceImpl;

  factory _UserGamePreference.fromJson(Map<String, dynamic> json) =
      _$UserGamePreferenceImpl.fromJson;

  @override
  String get userId;
  @override
  String get gameId;
  @override
  bool get isFavorite;
  @override
  bool get liked;
  @override
  bool get isBookmarked;
  @override
  DateTime? get lastPlayed;

  /// Create a copy of UserGamePreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserGamePreferenceImplCopyWith<_$UserGamePreferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
