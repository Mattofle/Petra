import 'package:go_router/go_router.dart';
import 'package:petra/navigation/app_route.dart';

mixin HomeAvigation {
  GoRouter get router;
  
  void goToHome() {
    router.goNamed(AppRoute.home.name);
  }
}