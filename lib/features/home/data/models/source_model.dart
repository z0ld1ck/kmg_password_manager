import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_model.freezed.dart';

part 'source_model.g.dart';

@freezed
class SourceModel with _$SourceModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SourceModel({
    required int sourceId,
    required String name,
    required String? password,
    required String tag,
    required String description,
    required bool isHidden,
  }) = _SourceModel;

  factory SourceModel.fromJson(Map<String, dynamic> json) =>
      _$SourceModelFromJson(json);
}
