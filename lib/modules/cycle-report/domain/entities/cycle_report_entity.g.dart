// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_report_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CycleReportEntity _$CycleReportEntityFromJson(Map<String, dynamic> json) =>
    _CycleReportEntity(
      id: json['id'] as String,
      logDate: DateTime.parse(json['logDate'] as String),
      flowLevel: (json['flowLevel'] as num).toInt(),
      symptoms:
          (json['symptoms'] as List<dynamic>).map((e) => e as String).toList(),
      note: json['note'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$CycleReportEntityToJson(_CycleReportEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logDate': instance.logDate.toIso8601String(),
      'flowLevel': instance.flowLevel,
      'symptoms': instance.symptoms,
      'note': instance.note,
      'userId': instance.userId,
    };
