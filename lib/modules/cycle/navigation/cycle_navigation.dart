import 'package:go_router/go_router.dart';
import 'package:petra/navigation/app_route.dart';

mixin CycleNavigation {
  GoRouter get router;
  
  void goToCycleHistory() {
    router.goNamed(AppRoute.cycleHistory.name);
  }
}