import 'package:petra/modules/cycle-report/cycle_report_di.dart';
import 'package:petra/modules/cycle-report/domain/entities/cycle_report_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'cycle_report_controller.g.dart';

class CycleReportState {
  final DateTime logDate;
  final int flowLevel;
  final List<String> symptoms;
  final String note;

  CycleReportState({
    required this.logDate,
    this.flowLevel = 0,
    this.symptoms = const [],
    this.note = '',
  });

  CycleReportState copyWith({
    DateTime? logDate,
    int? flowLevel,
    List<String>? symptoms,
    String? note,
  }) {
    return CycleReportState(
      logDate: logDate ?? this.logDate,
      flowLevel: flowLevel ?? this.flowLevel,
      symptoms: symptoms ?? this.symptoms,
      note: note ?? this.note,
    );
  }
}

@riverpod
class CycleReportController extends _$CycleReportController {
  @override
  CycleReportState build({DateTime? initialDate}) {
    return CycleReportState(logDate: initialDate ?? DateTime.now());
  }

  void setFlowLevel(int level) {
    state = state.copyWith(flowLevel: level);
  }

  void setSymptoms(Set<String> symptoms) {
    state = state.copyWith(symptoms: symptoms.toList());
  }

  void setNote(String note) {
    state = state.copyWith(note: note);
  }

  void setLogDate(DateTime date) {
    state = state.copyWith(logDate: date);
  }

  void reset() {
    state = CycleReportState(logDate: DateTime.now());
  }

  Future<void> saveReport() async {
    print("Saving report...");
    final reportEntity = _buildReportEntity();
    await ref.read(createCycleReportProvider).call(reportEntity);
  }

  CycleReportEntity _buildReportEntity() {
    return CycleReportEntity(
      id: const Uuid().v4(),
      logDate: state.logDate,
      flowLevel: state.flowLevel,
      symptoms: state.symptoms,
      note: state.note,
      userId: '1', // Replace with actual user ID
    );
  }
}
