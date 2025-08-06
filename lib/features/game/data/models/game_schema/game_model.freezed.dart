// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GameModel _$GameModelFromJson(Map<String, dynamic> json) {
  return _GameModel.fromJson(json);
}

/// @nodoc
mixin _$GameModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  String? get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "game_data_id")
  String? get gameDataId => throw _privateConstructorUsedError; // reference to the ai generated data
  @JsonKey(name: "game_ids")
  List<String> get gameIds => throw _privateConstructorUsedError;
  @JsonKey(name: "is_verified")
  bool get isVerified => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String> get assets => throw _privateConstructorUsedError;
  @JsonKey(name: "token_url")
  String? get tokenUrl => throw _privateConstructorUsedError; // Version for local game management
  int get version => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this GameModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameModelCopyWith<GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModelCopyWith<$Res> {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) then) =
      _$GameModelCopyWithImpl<$Res, GameModel>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: "creator_id") String? creatorId,
    @JsonKey(name: "game_data_id") String? gameDataId,
    @JsonKey(name: "game_ids") List<String> gameIds,
    @JsonKey(name: "is_verified") bool isVerified,
    List<String> tags,
    List<String> assets,
    @JsonKey(name: "token_url") String? tokenUrl,
    int version,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  });
}

/// @nodoc
class _$GameModelCopyWithImpl<$Res, $Val extends GameModel>
    implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? creatorId = freezed,
    Object? gameDataId = freezed,
    Object? gameIds = null,
    Object? isVerified = null,
    Object? tags = null,
    Object? assets = null,
    Object? tokenUrl = freezed,
    Object? version = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            creatorId: freezed == creatorId
                ? _value.creatorId
                : creatorId // ignore: cast_nullable_to_non_nullable
                      as String?,
            gameDataId: freezed == gameDataId
                ? _value.gameDataId
                : gameDataId // ignore: cast_nullable_to_non_nullable
                      as String?,
            gameIds: null == gameIds
                ? _value.gameIds
                : gameIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            isVerified: null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            assets: null == assets
                ? _value.assets
                : assets // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            tokenUrl: freezed == tokenUrl
                ? _value.tokenUrl
                : tokenUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GameModelImplCopyWith<$Res>
    implements $GameModelCopyWith<$Res> {
  factory _$$GameModelImplCopyWith(
    _$GameModelImpl value,
    $Res Function(_$GameModelImpl) then,
  ) = __$$GameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: "creator_id") String? creatorId,
    @JsonKey(name: "game_data_id") String? gameDataId,
    @JsonKey(name: "game_ids") List<String> gameIds,
    @JsonKey(name: "is_verified") bool isVerified,
    List<String> tags,
    List<String> assets,
    @JsonKey(name: "token_url") String? tokenUrl,
    int version,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  });
}

/// @nodoc
class __$$GameModelImplCopyWithImpl<$Res>
    extends _$GameModelCopyWithImpl<$Res, _$GameModelImpl>
    implements _$$GameModelImplCopyWith<$Res> {
  __$$GameModelImplCopyWithImpl(
    _$GameModelImpl _value,
    $Res Function(_$GameModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? creatorId = freezed,
    Object? gameDataId = freezed,
    Object? gameIds = null,
    Object? isVerified = null,
    Object? tags = null,
    Object? assets = null,
    Object? tokenUrl = freezed,
    Object? version = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$GameModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        creatorId: freezed == creatorId
            ? _value.creatorId
            : creatorId // ignore: cast_nullable_to_non_nullable
                  as String?,
        gameDataId: freezed == gameDataId
            ? _value.gameDataId
            : gameDataId // ignore: cast_nullable_to_non_nullable
                  as String?,
        gameIds: null == gameIds
            ? _value._gameIds
            : gameIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        isVerified: null == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        assets: null == assets
            ? _value._assets
            : assets // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        tokenUrl: freezed == tokenUrl
            ? _value.tokenUrl
            : tokenUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GameModelImpl implements _GameModel {
  const _$GameModelImpl({
    required this.id,
    required this.title,
    required this.description,
    @JsonKey(name: 'image_url') required this.imageUrl,
    @JsonKey(name: "creator_id") this.creatorId,
    @JsonKey(name: "game_data_id") this.gameDataId,
    @JsonKey(name: "game_ids") final List<String> gameIds = const [],
    @JsonKey(name: "is_verified") this.isVerified = false,
    final List<String> tags = const [],
    final List<String> assets = const [],
    @JsonKey(name: "token_url") this.tokenUrl,
    this.version = 1,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "updated_at") this.updatedAt,
  }) : _gameIds = gameIds,
       _tags = tags,
       _assets = assets;

  factory _$GameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: "creator_id")
  final String? creatorId;
  @override
  @JsonKey(name: "game_data_id")
  final String? gameDataId;
  // reference to the ai generated data
  final List<String> _gameIds;
  // reference to the ai generated data
  @override
  @JsonKey(name: "game_ids")
  List<String> get gameIds {
    if (_gameIds is EqualUnmodifiableListView) return _gameIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameIds);
  }

  @override
  @JsonKey(name: "is_verified")
  final bool isVerified;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _assets;
  @override
  @JsonKey()
  List<String> get assets {
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  @override
  @JsonKey(name: "token_url")
  final String? tokenUrl;
  // Version for local game management
  @override
  @JsonKey()
  final int version;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'GameModel(id: $id, title: $title, description: $description, imageUrl: $imageUrl, creatorId: $creatorId, gameDataId: $gameDataId, gameIds: $gameIds, isVerified: $isVerified, tags: $tags, assets: $assets, tokenUrl: $tokenUrl, version: $version, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.gameDataId, gameDataId) ||
                other.gameDataId == gameDataId) &&
            const DeepCollectionEquality().equals(other._gameIds, _gameIds) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            (identical(other.tokenUrl, tokenUrl) ||
                other.tokenUrl == tokenUrl) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    imageUrl,
    creatorId,
    gameDataId,
    const DeepCollectionEquality().hash(_gameIds),
    isVerified,
    const DeepCollectionEquality().hash(_tags),
    const DeepCollectionEquality().hash(_assets),
    tokenUrl,
    version,
    createdAt,
    updatedAt,
  );

  /// Create a copy of GameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameModelImplCopyWith<_$GameModelImpl> get copyWith =>
      __$$GameModelImplCopyWithImpl<_$GameModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameModelImplToJson(this);
  }
}

abstract class _GameModel implements GameModel {
  const factory _GameModel({
    required final String id,
    required final String title,
    required final String description,
    @JsonKey(name: 'image_url') required final String imageUrl,
    @JsonKey(name: "creator_id") final String? creatorId,
    @JsonKey(name: "game_data_id") final String? gameDataId,
    @JsonKey(name: "game_ids") final List<String> gameIds,
    @JsonKey(name: "is_verified") final bool isVerified,
    final List<String> tags,
    final List<String> assets,
    @JsonKey(name: "token_url") final String? tokenUrl,
    final int version,
    @JsonKey(name: "created_at") final DateTime? createdAt,
    @JsonKey(name: "updated_at") final DateTime? updatedAt,
  }) = _$GameModelImpl;

  factory _GameModel.fromJson(Map<String, dynamic> json) =
      _$GameModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: "creator_id")
  String? get creatorId;
  @override
  @JsonKey(name: "game_data_id")
  String? get gameDataId; // reference to the ai generated data
  @override
  @JsonKey(name: "game_ids")
  List<String> get gameIds;
  @override
  @JsonKey(name: "is_verified")
  bool get isVerified;
  @override
  List<String> get tags;
  @override
  List<String> get assets;
  @override
  @JsonKey(name: "token_url")
  String? get tokenUrl; // Version for local game management
  @override
  int get version;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;

  /// Create a copy of GameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameModelImplCopyWith<_$GameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
