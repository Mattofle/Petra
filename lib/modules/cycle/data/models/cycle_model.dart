import 'package:freezed_annotation/freezed_annotation.dart';

part 'cycle_model.freezed.dart';
part 'cycle_model.g.dart';

@freezed
class CycleModel with _$CycleModel {
  const factory CycleModel({
    required String id,
    required DateTime startDate,
    required DateTime endDate,
    required int cycleLength,
    required List<String> cycleReports,
    required bool isCurrent,
    required String userId,
  }) = _CycleModel;

  factory CycleModel.fromJson(Map<String, dynamic> json) =>
      _$CycleModelFromJson(json);
  
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}