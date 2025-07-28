// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_story_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameStory {

 String get id; String get title;//
 String get description;//
 String get imageUrl; String get duration;//
 String? get story;//
 String get gameType; String? get creatorId; String? get gameDataId;//reference to the ai generated data
 int get likes; int get plays; int get shares; int get comments; bool get isFavorite; bool get isVerified; List<String> get tags; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of GameStory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStoryCopyWith<GameStory> get copyWith => _$GameStoryCopyWithImpl<GameStory>(this as GameStory, _$identity);

  /// Serializes this GameStory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStory&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.story, story) || other.story == story)&&(identical(other.gameType, gameType) || other.gameType == gameType)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId)&&(identical(other.gameDataId, gameDataId) || other.gameDataId == gameDataId)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.plays, plays) || other.plays == plays)&&(identical(other.shares, shares) || other.shares == shares)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,imageUrl,duration,story,gameType,creatorId,gameDataId,likes,plays,shares,comments,isFavorite,isVerified,const DeepCollectionEquality().hash(tags),createdAt,updatedAt);

@override
String toString() {
  return 'GameStory(id: $id, title: $title, description: $description, imageUrl: $imageUrl, duration: $duration, story: $story, gameType: $gameType, creatorId: $creatorId, gameDataId: $gameDataId, likes: $likes, plays: $plays, shares: $shares, comments: $comments, isFavorite: $isFavorite, isVerified: $isVerified, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $GameStoryCopyWith<$Res>  {
  factory $GameStoryCopyWith(GameStory value, $Res Function(GameStory) _then) = _$GameStoryCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String imageUrl, String duration, String? story, String gameType, String? creatorId, String? gameDataId, int likes, int plays, int shares, int comments, bool isFavorite, bool isVerified, List<String> tags, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$GameStoryCopyWithImpl<$Res>
    implements $GameStoryCopyWith<$Res> {
  _$GameStoryCopyWithImpl(this._self, this._then);

  final GameStory _self;
  final $Res Function(GameStory) _then;

/// Create a copy of GameStory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? imageUrl = null,Object? duration = null,Object? story = freezed,Object? gameType = null,Object? creatorId = freezed,Object? gameDataId = freezed,Object? likes = null,Object? plays = null,Object? shares = null,Object? comments = null,Object? isFavorite = null,Object? isVerified = null,Object? tags = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,story: freezed == story ? _self.story : story // ignore: cast_nullable_to_non_nullable
as String?,gameType: null == gameType ? _self.gameType : gameType // ignore: cast_nullable_to_non_nullable
as String,creatorId: freezed == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as String?,gameDataId: freezed == gameDataId ? _self.gameDataId : gameDataId // ignore: cast_nullable_to_non_nullable
as String?,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,plays: null == plays ? _self.plays : plays // ignore: cast_nullable_to_non_nullable
as int,shares: null == shares ? _self.shares : shares // ignore: cast_nullable_to_non_nullable
as int,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as int,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [GameStory].
extension GameStoryPatterns on GameStory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameStory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameStory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameStory value)  $default,){
final _that = this;
switch (_that) {
case _GameStory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameStory value)?  $default,){
final _that = this;
switch (_that) {
case _GameStory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String imageUrl,  String duration,  String? story,  String gameType,  String? creatorId,  String? gameDataId,  int likes,  int plays,  int shares,  int comments,  bool isFavorite,  bool isVerified,  List<String> tags,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameStory() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.imageUrl,_that.duration,_that.story,_that.gameType,_that.creatorId,_that.gameDataId,_that.likes,_that.plays,_that.shares,_that.comments,_that.isFavorite,_that.isVerified,_that.tags,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String imageUrl,  String duration,  String? story,  String gameType,  String? creatorId,  String? gameDataId,  int likes,  int plays,  int shares,  int comments,  bool isFavorite,  bool isVerified,  List<String> tags,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _GameStory():
return $default(_that.id,_that.title,_that.description,_that.imageUrl,_that.duration,_that.story,_that.gameType,_that.creatorId,_that.gameDataId,_that.likes,_that.plays,_that.shares,_that.comments,_that.isFavorite,_that.isVerified,_that.tags,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String imageUrl,  String duration,  String? story,  String gameType,  String? creatorId,  String? gameDataId,  int likes,  int plays,  int shares,  int comments,  bool isFavorite,  bool isVerified,  List<String> tags,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _GameStory() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.imageUrl,_that.duration,_that.story,_that.gameType,_that.creatorId,_that.gameDataId,_that.likes,_that.plays,_that.shares,_that.comments,_that.isFavorite,_that.isVerified,_that.tags,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameStory implements GameStory {
  const _GameStory({required this.id, required this.title, required this.description, required this.imageUrl, required this.duration, required this.story, required this.gameType, this.creatorId, this.gameDataId, this.likes = 0, this.plays = 0, this.shares = 0, this.comments = 0, this.isFavorite = false, this.isVerified = false, final  List<String> tags = const [], this.createdAt, this.updatedAt}): _tags = tags;
  factory _GameStory.fromJson(Map<String, dynamic> json) => _$GameStoryFromJson(json);

@override final  String id;
@override final  String title;
//
@override final  String description;
//
@override final  String imageUrl;
@override final  String duration;
//
@override final  String? story;
//
@override final  String gameType;
@override final  String? creatorId;
@override final  String? gameDataId;
//reference to the ai generated data
@override@JsonKey() final  int likes;
@override@JsonKey() final  int plays;
@override@JsonKey() final  int shares;
@override@JsonKey() final  int comments;
@override@JsonKey() final  bool isFavorite;
@override@JsonKey() final  bool isVerified;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of GameStory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStoryCopyWith<_GameStory> get copyWith => __$GameStoryCopyWithImpl<_GameStory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameStoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameStory&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.story, story) || other.story == story)&&(identical(other.gameType, gameType) || other.gameType == gameType)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId)&&(identical(other.gameDataId, gameDataId) || other.gameDataId == gameDataId)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.plays, plays) || other.plays == plays)&&(identical(other.shares, shares) || other.shares == shares)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,imageUrl,duration,story,gameType,creatorId,gameDataId,likes,plays,shares,comments,isFavorite,isVerified,const DeepCollectionEquality().hash(_tags),createdAt,updatedAt);

@override
String toString() {
  return 'GameStory(id: $id, title: $title, description: $description, imageUrl: $imageUrl, duration: $duration, story: $story, gameType: $gameType, creatorId: $creatorId, gameDataId: $gameDataId, likes: $likes, plays: $plays, shares: $shares, comments: $comments, isFavorite: $isFavorite, isVerified: $isVerified, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$GameStoryCopyWith<$Res> implements $GameStoryCopyWith<$Res> {
  factory _$GameStoryCopyWith(_GameStory value, $Res Function(_GameStory) _then) = __$GameStoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String imageUrl, String duration, String? story, String gameType, String? creatorId, String? gameDataId, int likes, int plays, int shares, int comments, bool isFavorite, bool isVerified, List<String> tags, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$GameStoryCopyWithImpl<$Res>
    implements _$GameStoryCopyWith<$Res> {
  __$GameStoryCopyWithImpl(this._self, this._then);

  final _GameStory _self;
  final $Res Function(_GameStory) _then;

/// Create a copy of GameStory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? imageUrl = null,Object? duration = null,Object? story = freezed,Object? gameType = null,Object? creatorId = freezed,Object? gameDataId = freezed,Object? likes = null,Object? plays = null,Object? shares = null,Object? comments = null,Object? isFavorite = null,Object? isVerified = null,Object? tags = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_GameStory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,story: freezed == story ? _self.story : story // ignore: cast_nullable_to_non_nullable
as String?,gameType: null == gameType ? _self.gameType : gameType // ignore: cast_nullable_to_non_nullable
as String,creatorId: freezed == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as String?,gameDataId: freezed == gameDataId ? _self.gameDataId : gameDataId // ignore: cast_nullable_to_non_nullable
as String?,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,plays: null == plays ? _self.plays : plays // ignore: cast_nullable_to_non_nullable
as int,shares: null == shares ? _self.shares : shares // ignore: cast_nullable_to_non_nullable
as int,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as int,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
