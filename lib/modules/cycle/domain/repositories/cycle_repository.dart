import 'package:petra/modules/cycle/domain/entities/cycle_entity.dart';

abstract class CycleRepository {
  Future<void> createCycle({CycleEntity cycleEntity});

  Future<void> addReportToCycle({
    required String cycleId,
    required String reportId,
  });

  Future<CycleEntity?> getCycleById({required String cycleId});

  Future<List<CycleEntity>> getCycles({required String userId});

  Future<void> updateCycleEndDate({required String cycleId});

  Future<void> getCurrentCycle({required String userId});
}