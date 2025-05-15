import 'package:flutter/foundation.dart';

// * Central enum for all app routes
// * This is the single source of truth for route paths and names
@immutable
enum AppRoute {

  //* home freature routes
  home(name: 'home', path: '/home'),

  //* auth feature routes
  login(name: 'login', path: '/login'),
  register(name: 'register', path: '/register'),

  //* Cycle report feature routes
  cycleReportCreation(name: 'cycleReportCreation', path: '/cycle-report-creation'),

  //* Cycle feature routes
  cycleHistory(name: 'cycleHistory', path: '/cycle-history'),


  // TODO(dev): Add new routes following this pattern:
  // exampleRoute(name: 'exampleRouteName', path: '/example/path'),
  // detailRoute(name: 'detailRouteName', path: '/detail/:id'), // For routes with parameters

  caregiverForm(name: 'caregiverForm', path: '/caregiver-form');

  // ! Always use descriptive names that match the screen's purpose
  // ? Consider grouping related routes with similar path prefixes

  const AppRoute({required this.name, required this.path});

  final String name;
  final String path;
}
