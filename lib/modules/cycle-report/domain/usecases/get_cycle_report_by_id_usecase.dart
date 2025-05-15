import 'package:petra/modules/cycle-report/domain/entities/cycle_report_entity.dart';
import 'package:petra/modules/cycle-report/domain/repositories/cycle_report_repository.dart';

class GetCycleReportById {
  GetCycleReportById(this._cycleReportRepository);
  final CycleReportRepository _cycleReportRepository;

  Future<CycleReportEntity?> call({required String reportId}) async {
    return await _cycleReportRepository.getCycleReportById(reportId: reportId);
  }
}