import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_data_model.freezed.dart';
part 'game_data_model.g.dart';

@freezed
abstract class GameDataModel with _$GameDataModel {
  const factory GameDataModel({
    required String id,
    @Default([]) List<String> assets,
    @Default(1) int version,
    required String renderableContent,
    required String prompt,
    required String message,
  }) = _GameDataModel;

  factory GameDataModel.fromJson(Map<String, dynamic> json) =>
      _$GameDataModelFromJson(json);
}