// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameDataModelImpl _$$GameDataModelImplFromJson(Map<String, dynamic> json) =>
    _$GameDataModelImpl(
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

Map<String, dynamic> _$$GameDataModelImplToJson(_$GameDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assets': instance.assets,
      'version': instance.version,
      'renderableContent': instance.renderableContent,
      'prompt': instance.prompt,
      'message': instance.message,
    };
