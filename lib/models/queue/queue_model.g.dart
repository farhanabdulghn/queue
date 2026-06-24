// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QueueModel _$QueueModelFromJson(Map<String, dynamic> json) => _QueueModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  type: $enumDecodeNullable(_$QueueTypeEnumMap, json['type']),
);

Map<String, dynamic> _$QueueModelToJson(_QueueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$QueueTypeEnumMap[instance.type],
    };

const _$QueueTypeEnumMap = {
  QueueType.wait: 'wait',
  QueueType.called: 'called',
  QueueType.done: 'done',
};
