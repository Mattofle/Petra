import 'package:petra/modules/cycle-report/domain/entities/cycle_report_entity.dart';
import 'package:petra/modules/cycle-report/domain/repositories/cycle_report_repository.dart';

class GetCycleReportByDate {
  GetCycleReportByDate(this._cycleReportRepository);
  final CycleReportRepository _cycleReportRepository;

  Future<CycleReportEntity?> call({
    required String userId,
    required DateTime date,
  }) async {
    return await _cycleReportRepository.getCycleReportsByDate(
      userId: userId,
      date: date,
    );
  }
}