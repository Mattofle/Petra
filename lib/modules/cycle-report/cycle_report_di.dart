import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petra/modules/auth/data/datasource/mock_auth_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:petra/modules/cycle-report/data/datasources/cycle_report_datasource.dart';
import 'package:petra/modules/cycle-report/data/datasources/cycle_report_mock_datasource.dart';
import 'package:petra/modules/cycle-report/data/repositories/cycle_report_repository_impl.dart';
import 'package:petra/modules/cycle-report/domain/repositories/cycle_report_repository.dart';
import 'package:petra/modules/cycle-report/domain/usecases/create_cycle_repor_usecase.dart';
import 'package:petra/modules/cycle-report/domain/usecases/delete_cycle_report.dart';
import 'package:petra/modules/cycle-report/domain/usecases/update_cycle_report.dart';
import 'package:petra/modules/cycle-report/domain/usecases/get_cycle_report_by_id_usecase.dart';
import 'package:petra/modules/cycle-report/domain/usecases/get_cycle_report_by_date_usecase.dart';
import 'package:petra/modules/cycle-report/domain/usecases/get_cycle_reports.dart';

part 'cycle_report_di.g.dart';

//* data source layer
@riverpod
CycleReportMockDatasource cycleReportDatasource(Ref ref) {
  return CycleReportMockDatasource();
}

//* repository layer
@riverpod
CycleReportRepository cycleReportRepository(Ref ref) {
  final dataSource = ref.read(cycleReportDatasourceProvider);
  return CycleReportRepositoryImpl(dataSource);
}

//* use cases layer
@riverpod
CreateCycleReport createCycleReport(Ref ref) {
  final repository = ref.read(cycleReportRepositoryProvider);
  return CreateCycleReport(repository);
}

@riverpod
DeleteCycleReport deleteCycleReport(Ref ref) {
  final repository = ref.read(cycleReportRepositoryProvider);
  return DeleteCycleReport(repository);
}

@riverpod
UpdateCycleReport updateCycleReport(Ref ref) {
  final repository = ref.read(cycleReportRepositoryProvider);
  return UpdateCycleReport(repository);
}

@riverpod
GetCycleReportById getCycleReportById(Ref ref) {
  final repository = ref.read(cycleReportRepositoryProvider);
  return GetCycleReportById(repository);
}

@riverpod
GetCycleReportByDate getCycleReportByDate(Ref ref) {
  final repository = ref.read(cycleReportRepositoryProvider);
  return GetCycleReportByDate(repository);
}

@riverpod
GetCycleReports getCycleReports(Ref ref) {
  final repository = ref.read(cycleReportRepositoryProvider);
  return GetCycleReports(repository);
}