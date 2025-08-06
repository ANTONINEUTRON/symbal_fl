// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GameDataModel _$GameDataModelFromJson(Map<String, dynamic> json) {
  return _GameDataModel.fromJson(json);
}

/// @nodoc
mixin _$GameDataModel {
  String get id => throw _privateConstructorUsedError; // Core metadata
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get tags =>
      throw _privateConstructorUsedError; // Game content - maps to database 'html' field
  @JsonKey(name: 'html')
  String get renderableContent => throw _privateConstructorUsedError; // AI generation context - maps to database fields
  @JsonKey(name: 'original_prompt')
  String get prompt => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_to_user')
  String get message => throw _privateConstructorUsedError; // Database fields with exact mapping
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  List<String> get assets => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this GameDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameDataModelCopyWith<GameDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDataModelCopyWith<$Res> {
  factory $GameDataModelCopyWith(
    GameDataModel value,
    $Res Function(GameDataModel) then,
  ) = _$GameDataModelCopyWithImpl<$Res, GameDataModel>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    List<String> tags,
    @JsonKey(name: 'html') String renderableContent,
    @JsonKey(name: 'original_prompt') String prompt,
    @JsonKey(name: 'message_to_user') String message,
    @JsonKey(name: 'user_id') String? userId,
    List<String> assets,
    String status,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  });
}

/// @nodoc
class _$GameDataModelCopyWithImpl<$Res, $Val extends GameDataModel>
    implements $GameDataModelCopyWith<$Res> {
  _$GameDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? tags = null,
    Object? renderableContent = null,
    Object? prompt = null,
    Object? message = null,
    Object? userId = freezed,
    Object? assets = null,
    Object? status = null,
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
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            renderableContent: null == renderableContent
                ? _value.renderableContent
                : renderableContent // ignore: cast_nullable_to_non_nullable
                      as String,
            prompt: null == prompt
                ? _value.prompt
                : prompt // ignore: cast_nullable_to_non_nullable
                      as String,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            assets: null == assets
                ? _value.assets
                : assets // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$GameDataModelImplCopyWith<$Res>
    implements $GameDataModelCopyWith<$Res> {
  factory _$$GameDataModelImplCopyWith(
    _$GameDataModelImpl value,
    $Res Function(_$GameDataModelImpl) then,
  ) = __$$GameDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    List<String> tags,
    @JsonKey(name: 'html') String renderableContent,
    @JsonKey(name: 'original_prompt') String prompt,
    @JsonKey(name: 'message_to_user') String message,
    @JsonKey(name: 'user_id') String? userId,
    List<String> assets,
    String status,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  });
}

/// @nodoc
class __$$GameDataModelImplCopyWithImpl<$Res>
    extends _$GameDataModelCopyWithImpl<$Res, _$GameDataModelImpl>
    implements _$$GameDataModelImplCopyWith<$Res> {
  __$$GameDataModelImplCopyWithImpl(
    _$GameDataModelImpl _value,
    $Res Function(_$GameDataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? tags = null,
    Object? renderableContent = null,
    Object? prompt = null,
    Object? message = null,
    Object? userId = freezed,
    Object? assets = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$GameDataModelImpl(
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
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        renderableContent: null == renderableContent
            ? _value.renderableContent
            : renderableContent // ignore: cast_nullable_to_non_nullable
                  as String,
        prompt: null == prompt
            ? _value.prompt
            : prompt // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        assets: null == assets
            ? _value._assets
            : assets // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$GameDataModelImpl extends _GameDataModel {
  const _$GameDataModelImpl({
    required this.id,
    required this.title,
    required this.description,
    final List<String> tags = const [],
    @JsonKey(name: 'html') required this.renderableContent,
    @JsonKey(name: 'original_prompt') required this.prompt,
    @JsonKey(name: 'message_to_user') required this.message,
    @JsonKey(name: 'user_id') this.userId,
    final List<String> assets = const [],
    this.status = 'generated',
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "updated_at") this.updatedAt,
  }) : _tags = tags,
       _assets = assets,
       super._();

  factory _$GameDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameDataModelImplFromJson(json);

  @override
  final String id;
  // Core metadata
  @override
  final String title;
  @override
  final String description;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  // Game content - maps to database 'html' field
  @override
  @JsonKey(name: 'html')
  final String renderableContent;
  // AI generation context - maps to database fields
  @override
  @JsonKey(name: 'original_prompt')
  final String prompt;
  @override
  @JsonKey(name: 'message_to_user')
  final String message;
  // Database fields with exact mapping
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  final List<String> _assets;
  @override
  @JsonKey()
  List<String> get assets {
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'GameDataModel(id: $id, title: $title, description: $description, tags: $tags, renderableContent: $renderableContent, prompt: $prompt, message: $message, userId: $userId, assets: $assets, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.renderableContent, renderableContent) ||
                other.renderableContent == renderableContent) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            (identical(other.status, status) || other.status == status) &&
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
    const DeepCollectionEquality().hash(_tags),
    renderableContent,
    prompt,
    message,
    userId,
    const DeepCollectionEquality().hash(_assets),
    status,
    createdAt,
    updatedAt,
  );

  /// Create a copy of GameDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameDataModelImplCopyWith<_$GameDataModelImpl> get copyWith =>
      __$$GameDataModelImplCopyWithImpl<_$GameDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameDataModelImplToJson(this);
  }
}

abstract class _GameDataModel extends GameDataModel {
  const factory _GameDataModel({
    required final String id,
    required final String title,
    required final String description,
    final List<String> tags,
    @JsonKey(name: 'html') required final String renderableContent,
    @JsonKey(name: 'original_prompt') required final String prompt,
    @JsonKey(name: 'message_to_user') required final String message,
    @JsonKey(name: 'user_id') final String? userId,
    final List<String> assets,
    final String status,
    @JsonKey(name: "created_at") final DateTime? createdAt,
    @JsonKey(name: "updated_at") final DateTime? updatedAt,
  }) = _$GameDataModelImpl;
  const _GameDataModel._() : super._();

  factory _GameDataModel.fromJson(Map<String, dynamic> json) =
      _$GameDataModelImpl.fromJson;

  @override
  String get id; // Core metadata
  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get tags; // Game content - maps to database 'html' field
  @override
  @JsonKey(name: 'html')
  String get renderableContent; // AI generation context - maps to database fields
  @override
  @JsonKey(name: 'original_prompt')
  String get prompt;
  @override
  @JsonKey(name: 'message_to_user')
  String get message; // Database fields with exact mapping
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  List<String> get assets;
  @override
  String get status;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;

  /// Create a copy of GameDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameDataModelImplCopyWith<_$GameDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
