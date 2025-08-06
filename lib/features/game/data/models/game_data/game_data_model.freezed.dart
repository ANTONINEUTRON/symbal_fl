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
  String get id => throw _privateConstructorUsedError;
  List<String> get assets => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  String get renderableContent => throw _privateConstructorUsedError;
  String get prompt => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

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
    List<String> assets,
    int version,
    String renderableContent,
    String prompt,
    String message,
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
    Object? assets = null,
    Object? version = null,
    Object? renderableContent = null,
    Object? prompt = null,
    Object? message = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            assets: null == assets
                ? _value.assets
                : assets // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as int,
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
    List<String> assets,
    int version,
    String renderableContent,
    String prompt,
    String message,
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
    Object? assets = null,
    Object? version = null,
    Object? renderableContent = null,
    Object? prompt = null,
    Object? message = null,
  }) {
    return _then(
      _$GameDataModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        assets: null == assets
            ? _value._assets
            : assets // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as int,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GameDataModelImpl implements _GameDataModel {
  const _$GameDataModelImpl({
    required this.id,
    final List<String> assets = const [],
    this.version = 1,
    required this.renderableContent,
    required this.prompt,
    required this.message,
  }) : _assets = assets;

  factory _$GameDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameDataModelImplFromJson(json);

  @override
  final String id;
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
  final int version;
  @override
  final String renderableContent;
  @override
  final String prompt;
  @override
  final String message;

  @override
  String toString() {
    return 'GameDataModel(id: $id, assets: $assets, version: $version, renderableContent: $renderableContent, prompt: $prompt, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.renderableContent, renderableContent) ||
                other.renderableContent == renderableContent) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    const DeepCollectionEquality().hash(_assets),
    version,
    renderableContent,
    prompt,
    message,
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

abstract class _GameDataModel implements GameDataModel {
  const factory _GameDataModel({
    required final String id,
    final List<String> assets,
    final int version,
    required final String renderableContent,
    required final String prompt,
    required final String message,
  }) = _$GameDataModelImpl;

  factory _GameDataModel.fromJson(Map<String, dynamic> json) =
      _$GameDataModelImpl.fromJson;

  @override
  String get id;
  @override
  List<String> get assets;
  @override
  int get version;
  @override
  String get renderableContent;
  @override
  String get prompt;
  @override
  String get message;

  /// Create a copy of GameDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameDataModelImplCopyWith<_$GameDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
