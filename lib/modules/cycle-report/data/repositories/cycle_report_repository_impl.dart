import 'package:petra/modules/cycle-report/data/datasources/cycle_report_mock_datasource.dart';
import 'package:petra/modules/cycle-report/data/models/cycle_report_model.dart';
import 'package:petra/modules/cycle-report/domain/entities/cycle_report_entity.dart';
import 'package:petra/modules/cycle-report/domain/repositories/cycle_report_repository.dart';

class CycleReportRepositoryImpl implements CycleReportRepository {
  CycleReportRepositoryImpl(this._cycleReportDatasource);

  final CycleReportMockDatasource _cycleReportDatasource;

  /// Creates a new cycle report in the database.
  ///
  /// [cycleReport] The cycle report entity to create.
  ///
  /// Returns a Future that resolves when the report is successfully created.
  /// Throws an exception if the creation fails.
  @override
  Future<void> createCycleReport(CycleReportEntity cycleReport) async {
    try {
    
      
      return await _cycleReportDatasource.createCycleReport(cycleReport.toModel());
    } catch (e) {
      throw Exception('Failed to create cycle report: $e');
    }
  }

  /// Deletes a specific cycle report by its unique identifier.
  ///
  /// [reportId] The unique identifier of the cycle report.
  ///
  /// Returns a Future that resolves when the deletion is completed.
  /// Throws an exception if the operation fails.
  @override
  Future<void> deleteCycleReport({required String reportId}) async {
    try {
      return await _cycleReportDatasource.deleteCycleReport(reportId: reportId);
    } catch (e) {
      throw Exception('Failed to delete cycle report: $e');
    }
  }

  /// Updates an existing cycle report in the database.
  ///
  /// [cycleReport] The cycle report entity with the updated information.
  ///
  /// Returns a Future that resolves when the update is completed.
  /// Throws an exception if the update fails.
  @override
  Future<void> updateCycleReport(CycleReportEntity cycleReport) async {
    try {
      
      
      return await _cycleReportDatasource.updateCycleReport(cycleReport.toModel());
    } catch (e) {
      throw Exception('Failed to update cycle report: $e');
    }
  }

  /// Retrieves a specific cycle report by its unique identifier.
  ///
  /// [reportId] The unique identifier of the cycle report.
  ///
  /// Returns a Future that resolves to a CycleReportEntity, or null if no report is found.
  /// Throws an exception if the retrieval fails.
  @override
  Future<CycleReportEntity?> getCycleReportById({required String reportId}) async {
    try {
      final cycleReportModel = await _cycleReportDatasource.getCycleReportById(reportId: reportId);
      
      if (cycleReportModel == null) {
        return null;
      }
      
      return cycleReportModel.toEntity();
    } catch (e) {
      throw Exception('Failed to get cycle report by ID: $e');
    }
  }

 /// Retrieves cycle report for a specific day.
  ///
  /// [userId] The unique identifier of the user.
  /// [date] The date for which to retrieve report.
  ///
  /// Returns a Future that resolves to a CycleReportEntity, or null if no report is found.
  /// Throws an exception if the retrieval fails.
  @override
  Future<CycleReportEntity> getCycleReportsByDate({
    required String userId,
    required DateTime date,
  }) async {
    try {
      final cycleReportModel = await _cycleReportDatasource.getCycleReportsByDate(
        userId: userId,
        date: date,
      );
      
      return cycleReportModel.toEntity();
    } catch (e) {
      throw Exception('Failed to get cycle report by date: $e');
    }
  }

  /// Retrieves all cycle reports for a specific user.
  ///
  /// [userId] The unique identifier of the user.
  ///
  /// Returns a Future that resolves to a list of CycleReportEntity objects.
  /// Throws an exception if the retrieval fails.
  @override
  Future<List<CycleReportEntity>> getCycleReports({required String userId}) async {
    try {
      final cycleReportModels = await _cycleReportDatasource.getCycleReports(
        userId: userId,
      );
      
      return cycleReportModels
          .map((model) => CycleReportEntity(
                id: model.id,
                logDate: model.logDate,
                flowLevel: model.flowLevel,
                symptoms: model.symptoms,
                note: model.note,
                userId: model.userId,
              ))
          .toList();
    } catch (e) {
      throw Exception('Failed to get cycle reports: $e');
    }
  }
}