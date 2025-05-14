import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petra/modules/cycle-report/domain/entities/cycle_report_entity.dart';

part 'cycle_report_model.freezed.dart';
part 'cycle_report_model.g.dart';

@freezed
class CycleReportModel with _$CycleReportModel {
  const factory CycleReportModel({
    required String id,
    required DateTime logDate,
    required int flowLevel,
    required List<String> symptoms,
    required String note,
    required String userId,
  }) = _CycleReportModel;

  factory CycleReportModel.fromJson(Map<String, dynamic> json) =>
      _$CycleReportModelFromJson(json);
  
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension CycleReportModelX on CycleReportModel {
  CycleReportEntity toEntity() {
    return CycleReportEntity(
      id: id,
      logDate: logDate,
      flowLevel: flowLevel,
      symptoms: symptoms,
      note: note,
      userId: userId,
    );
  }
}