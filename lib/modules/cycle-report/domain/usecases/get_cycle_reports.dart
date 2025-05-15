import 'package:petra/modules/cycle-report/domain/entities/cycle_report_entity.dart';
import 'package:petra/modules/cycle-report/domain/repositories/cycle_report_repository.dart';

class GetCycleReports {
  GetCycleReports(this._cycleReportRepository);
  final CycleReportRepository _cycleReportRepository;

  Future<List<CycleReportEntity>> call({required String userId}) async {
    return await _cycleReportRepository.getCycleReports(userId: userId);
  }
}