import 'package:freezed_annotation/freezed_annotation.dart';

part 'cycle_entity.freezed.dart';
part 'cycle_entity.g.dart';

@freezed
class CycleEntity with _$CycleEntity {
  const factory CycleEntity({
    required String id,
    required DateTime startDate,
    required DateTime endDate,
    required int cycleLength,
    required List<String> cycleReports,
    required bool isCurrent,
    required String userId,
  }) = _CycleEntity;

  factory CycleEntity.fromJson(Map<String, dynamic> json) =>
      _$CycleEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
