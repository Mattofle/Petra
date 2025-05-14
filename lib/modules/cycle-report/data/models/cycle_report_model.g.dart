// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CycleReportModel _$CycleReportModelFromJson(Map<String, dynamic> json) =>
    _CycleReportModel(
      id: json['id'] as String,
      logDate: DateTime.parse(json['logDate'] as String),
      flowLevel: (json['flowLevel'] as num).toInt(),
      symptoms:
          (json['symptoms'] as List<dynamic>).map((e) => e as String).toList(),
      note: json['note'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$CycleReportModelToJson(_CycleReportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logDate': instance.logDate.toIso8601String(),
      'flowLevel': instance.flowLevel,
      'symptoms': instance.symptoms,
      'note': instance.note,
      'userId': instance.userId,
    };
