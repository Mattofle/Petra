import 'package:petra/modules/cycle-report/domain/entities/cycle_report_entity.dart';

abstract class CycleReportRepository {
  Future<void> createCycleReport(CycleReportEntity cycleReport);

  Future<void> deleteCycleReport({required String reportId});

  Future<void> updateCycleReport(CycleReportEntity cycleReport);

  Future<CycleReportEntity?> getCycleReportById({required String reportId});

  Future<CycleReportEntity> getCycleReportsByDate({
    required String userId,
    required DateTime date,
  });

  Future<List<CycleReportEntity>> getCycleReports({required String userId});
}