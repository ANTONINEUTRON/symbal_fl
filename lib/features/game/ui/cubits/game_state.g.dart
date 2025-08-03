// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateGameState _$CreateGameStateFromJson(Map<String, dynamic> json) =>
    _CreateGameState(
      chatList:
          (json['chatList'] as List<dynamic>?)
              ?.map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isGenerating: json['isGenerating'] as bool? ?? false,
      isDeploying: json['isDeploying'] as bool? ?? false,
      isDraftSaved: json['isDraftSaved'] as bool? ?? false,
      isDeployed: json['isDeployed'] as bool? ?? false,
      retriesCount: (json['retriesCount'] as num?)?.toInt() ?? 3,
      generatedGame: json['generatedGame'] == null
          ? null
          : GameModel.fromJson(json['generatedGame'] as Map<String, dynamic>),
      draftGames:
          (json['draftGames'] as List<dynamic>?)
              ?.map((e) => GameModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      error: json['error'] as String?,
    );

Map<String, dynamic> _$CreateGameStateToJson(_CreateGameState instance) =>
    <String, dynamic>{
      'chatList': instance.chatList,
      'isGenerating': instance.isGenerating,
      'isDeploying': instance.isDeploying,
      'isDraftSaved': instance.isDraftSaved,
      'isDeployed': instance.isDeployed,
      'retriesCount': instance.retriesCount,
      'generatedGame': instance.generatedGame,
      'draftGames': instance.draftGames,
      'error': instance.error,
    };
