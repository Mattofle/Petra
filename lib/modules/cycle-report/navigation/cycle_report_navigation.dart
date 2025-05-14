import 'package:go_router/go_router.dart';
import 'package:petra/navigation/app_route.dart';

mixin CycleReportNavigation {
  GoRouter get router;

  void goToCycleReportCreation({required DateTime reportDate}) {
    router.goNamed(
      AppRoute.cycleReportCreation.name,
      queryParameters: {
        'reportDate': reportDate,
      },
    );
  }

  // void goToCycleReportDetails(String cycleId) {
  //   router.goNamed(AppRoute.cycleReportDetails.name, pathParameters: {
  //     'cycleId': cycleId,
  //   });
  // }
}