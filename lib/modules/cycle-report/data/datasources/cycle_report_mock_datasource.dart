import 'package:petra/modules/cycle-report/data/datasources/cycle_report_datasource.dart';
import 'package:petra/modules/cycle-report/data/models/cycle_report_model.dart';
import 'dart:async';

class CycleReportMockDatasource implements CycleReportDatasource {
  // Stockage interne des données simulant une base de données NoSQL
  final List<Map<String, dynamic>> _reportsData = [
    {
      'id': '1',
      'logDate': DateTime.now().subtract(const Duration(days: 30)),
      'flowLevel': 3,
      'symptoms': ['crampes', 'fatigue', 'maux de tête'],
      'note': 'Premier jour de cycle',
      'userId': '1',
    },
    {
      'id': '2',
      'logDate': DateTime.now().subtract(const Duration(days: 29)),
      'flowLevel': 4,
      'symptoms': ['crampes', 'fatigue'],
      'note': 'Jour plus difficile',
      'userId': '1',
    },
    {
      'id': '3',
      'logDate': DateTime.now().subtract(const Duration(days: 28)),
      'flowLevel': 2,
      'symptoms': ['fatigue'],
      'note': 'Amélioration',
      'userId': '1',
    },
    {
      'id': '4',
      'logDate': DateTime.now().subtract(const Duration(days: 27)),
      'flowLevel': 1,
      'symptoms': [],
      'note': 'Fin de cycle',
      'userId': '1',
    },
    {
      'id': '5',
      'logDate': DateTime.now().subtract(const Duration(days: 2)),
      'flowLevel': 2,
      'symptoms': ['crampes', 'changements d\'humeur'],
      'note': 'Début du nouveau cycle',
      'userId': '1',
    },
    {
      'id': '6',
      'logDate': DateTime.now().subtract(const Duration(days: 1)),
      'flowLevel': 3,
      'symptoms': ['crampes', 'fatigue', 'nausée'],
      'note': 'Deuxième jour',
      'userId': '1',
    },
    {
      'id': '7',
      'logDate': DateTime.now(),
      'flowLevel': 2,
      'symptoms': ['fatigue'],
      'note': 'Troisième jour',
      'userId': '1',
    },
  ];

  //* Creation of a new report
  Future<void> createCycleReport(CycleReportModel cycleReport) async {
    print('----------------------------------------------------------------------------------------');
    print('Creating a new cycle report: ${cycleReport.toJson()}');
    //* used to simulate a network delay
    await Future.delayed(const Duration(milliseconds: 300));

    if (_reportsData.any((report) => report['id'] == cycleReport.id)) {
      throw Exception('Un rapport avec cet ID existe déjà: ${cycleReport.id}');
    }

    _reportsData.add(cycleReport.toJson());
    print('Report created successfully: ${cycleReport.toJson()}');
    print('_reportsData: $_reportsData');
    print('----------------------------------------------------------------------------------------');
  }

  //* detete a report
  Future<void> deleteCycleReport({required String reportId}) async {
    await Future.delayed(const Duration(milliseconds: 300));

    final initialLength = _reportsData.length;
    _reportsData.removeWhere((report) => report['id'] == reportId);

    if (_reportsData.length == initialLength) {
      throw Exception('Rapport non trouvé avec l\'ID: $reportId');
    }
  }

  //* Update a report
  Future<void> updateCycleReport(CycleReportModel cycleReport) async {
    await Future.delayed(const Duration(milliseconds: 300));

    final index = _reportsData.indexWhere(
      (report) => report['id'] == cycleReport.id,
    );
    if (index == -1) {
      throw Exception('Rapport non trouvé avec l\'ID: ${cycleReport.id}');
    }

    _reportsData[index] = cycleReport.toJson();
  }

  //* Get a report by ID
  Future<CycleReportModel?> getCycleReportById({
    required String reportId,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));

    try {
      final reportData = _reportsData.firstWhere(
        (report) => report['id'] == reportId,
      );
      return CycleReportModel.fromJson(reportData);
    } catch (e) {
      return null;
    }
  }

  //* Get reports by date
  Future<CycleReportModel> getCycleReportsByDate({
    required String userId,
    required DateTime date,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));

    final reportData = _reportsData.firstWhere((report) {
      final reportDate = report['logDate'] as DateTime;
      return report['userId'] == userId &&
          reportDate.year == date.year &&
          reportDate.month == date.month &&
          reportDate.day == date.day;
    });

    return CycleReportModel.fromJson(reportData);
  }

  //* Get all reports for a user
  Future<List<CycleReportModel>> getCycleReports({
    required String userId,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));

    return _reportsData
        .where((report) => report['userId'] == userId)
        .map((report) => CycleReportModel.fromJson(report))
        .toList();
  }
}
