// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceModelImpl _$$SourceModelImplFromJson(Map<String, dynamic> json) =>
    _$SourceModelImpl(
      sourceId: json['source_id'] as int,
      name: json['name'] as String,
      password: json['password'] as String?,
      tag: json['tag'] as String,
      description: json['description'] as String,
      isHidden: json['is_hidden'] as bool,
    );

Map<String, dynamic> _$$SourceModelImplToJson(_$SourceModelImpl instance) =>
    <String, dynamic>{
      'source_id': instance.sourceId,
      'name': instance.name,
      'password': instance.password,
      'tag': instance.tag,
      'description': instance.description,
      'is_hidden': instance.isHidden,
    };
