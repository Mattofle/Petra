import 'package:riverpod_annotation/riverpod_annotation.dart';

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
    return CycleReportState(
      logDate: initialDate ?? DateTime.now(),
    );
  }

  void setFlowLevel(int level) {
    state = state.copyWith(flowLevel: level);
  }
}