import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petra/modules/cycle-report/data/models/cycle_report_model.dart';

part 'cycle_report_entity.freezed.dart';
part 'cycle_report_entity.g.dart';

@freezed
class CycleReportEntity with _$CycleReportEntity {
  const factory CycleReportEntity({
    required String id,
    required DateTime logDate,
    required int flowLevel,
    required List<String> symptoms,
    required String note,
    required String userId,
  }) = _CycleReportEntity;

  factory CycleReportEntity.fromJson(Map<String, dynamic> json) =>
      _$CycleReportEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

extension CycleReportModelX on CycleReportEntity {
  CycleReportModel toModel() {
    return CycleReportModel(
      id: id,
      logDate: logDate,
      flowLevel: flowLevel,
      symptoms: symptoms,
      note: note,
      userId: userId,
    );
  }
}