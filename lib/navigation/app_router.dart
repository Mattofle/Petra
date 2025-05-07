import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:petra/modules/auth/presentation/screens/register_screen.dart';
import 'package:petra/navigation/app_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

// * Main router configuration for the application
// * Defines all routes and their corresponding screens
@Riverpod(keepAlive: true)
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: AppRoute.register.path,
    // refreshListenable: ref.watch(authStateNotifierProvider),
    debugLogDiagnostics: true,

    // * Redirect routes configuration
    // ! When adding a new protected route:
    // ! 1. First add it to the main route config
    // ! 2. Then add the corresponding GoRoute path here
    redirect: (context, state) async {
      //final authState = ref.read(getUserAuthUseCaseProvider);
      //final isAuth = authState != null && authState.uuid != null;

      // List of the protected routes that require authentication
      // These routes are accessible only to authenticated users
      // final protectedRoutes = [ AppRoute.home.path];

      // List of routes that are not accessible when authenticated
      // final notAuthRoutes = [
      //   AppRoute.login.path,
      //   AppRoute.register.path,
      // ];

      // If the user is not authenticated and tries to access a protected route
      // if (!isAuth &&
      //     protectedRoutes.any(
      //       (route) => state.fullPath?.contains(route) ?? false,
      //     )) {
      //   // Rediriger vers la page de login
      //   return AppRoute.onboarding.path;
      // }

      // If the user is authenticated and tries to access an auth route
      // if (isAuth &&
      //     notAuthRoutes.any((route) {
      //       return state.fullPath?.contains(route) ?? false;
      //     })) {
      //   return AppRoute.home.path;
      // }
      // Continue to the requested route
      return null;
    },

    // * Main routes configuration
    // ! When adding a new route:
    // ! 1. First add it to the AppRoute enum
    // ! 2. Then add the corresponding GoRoute here
    // ! 3. Create the screen widget if it doesn't exist
    // ! 4. Add navigation method to the appropriate feature navigation mixin
    routes: [
      GoRoute(
        path: AppRoute.register.path,
        name: AppRoute.register.name,
        builder: (context, state) {
          return const RegisterScreen();
        },
      ),
    ],
    // errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
