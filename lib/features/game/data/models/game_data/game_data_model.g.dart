// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameDataModel _$GameDataModelFromJson(Map<String, dynamic> json) =>
    _GameDataModel(
      id: json['id'] as String,
      assets:
          (json['assets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      version: (json['version'] as num?)?.toInt() ?? 1,
      renderableContent: json['renderableContent'] as String,
      prompt: json['prompt'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$GameDataModelToJson(_GameDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assets': instance.assets,
      'version': instance.version,
      'renderableContent': instance.renderableContent,
      'prompt': instance.prompt,
      'message': instance.message,
    };
