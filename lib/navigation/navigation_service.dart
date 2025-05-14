import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:petra/modules/auth/presentation/navigation/auth_navigation.dart';
import 'package:petra/modules/cycle-report/navigation/cycle_report_navigation.dart';
import 'package:petra/modules/home/navigation/home_avigation.dart';
import 'package:petra/navigation/app_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_service.g.dart';

// * Navigation service that abstracts router implementation details
// * Uses feature-specific navigation mixins to organize navigation methods
// ! When creating a feature, add its navigation mixin here
class NavigationService
    with AuthNavigation, HomeAvigation, CycleReportNavigation {
  NavigationService(this._router);

  final GoRouter _router;

  @override
  GoRouter get router => _router;

  // * Core navigation methods used across all features
  // * Feature-specific navigation methods should be in their respective mixins
}

// * Provider for the navigation service - use this in your widgets
@Riverpod(keepAlive: true)
NavigationService navigationService(Ref ref) {
  final router = ref.read(goRouterProvider);
  return NavigationService(router);
}