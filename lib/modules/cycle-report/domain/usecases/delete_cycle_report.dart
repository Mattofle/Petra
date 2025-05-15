import 'package:petra/modules/cycle-report/domain/repositories/cycle_report_repository.dart';

class DeleteCycleReport {
  DeleteCycleReport(this._cycleReportRepository);
  final CycleReportRepository _cycleReportRepository;

  Future<void> call({required String reportId}) async {
    await _cycleReportRepository.deleteCycleReport(reportId: reportId);
  }
}