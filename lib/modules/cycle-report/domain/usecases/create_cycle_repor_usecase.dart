import 'package:petra/modules/cycle-report/domain/entities/cycle_report_entity.dart';
import 'package:petra/modules/cycle-report/domain/repositories/cycle_report_repository.dart';

class CreateCycleReport {
  CreateCycleReport(this._cycleReportRepository);
  final CycleReportRepository _cycleReportRepository;

  Future<void> call(CycleReportEntity cycleReport) async {
    await _cycleReportRepository.createCycleReport(cycleReport);
  }
}