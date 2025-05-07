import 'package:go_router/go_router.dart';
import 'package:petra/navigation/app_route.dart';

mixin AuthNavigation {
  GoRouter get router;

  void goToLogin() {
    router.goNamed(AppRoute.login.name);
  }

  void goToRegister() {
    router.goNamed(AppRoute.register.name);
  }
}