// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CycleEntity _$CycleEntityFromJson(Map<String, dynamic> json) => _CycleEntity(
  id: json['id'] as String,
  startDate: DateTime.parse(json['startDate'] as String),
  endDate: DateTime.parse(json['endDate'] as String),
  cycleLength: (json['cycleLength'] as num).toInt(),
  cycleReports:
      (json['cycleReports'] as List<dynamic>).map((e) => e as String).toList(),
  isCurrent: json['isCurrent'] as bool,
  userId: json['userId'] as String,
);

Map<String, dynamic> _$CycleEntityToJson(_CycleEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'cycleLength': instance.cycleLength,
      'cycleReports': instance.cycleReports,
      'isCurrent': instance.isCurrent,
      'userId': instance.userId,
    };
