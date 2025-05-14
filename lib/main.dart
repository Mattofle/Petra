import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';

import 'package:petra/navigation/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    final roseTheme = FThemes.rose.light;
    
    return MaterialApp.router(
      routerConfig: router,
      title: 'Petra',
      debugShowCheckedModeBanner: false,
      builder: (_, child) => FTheme(
        data: roseTheme,
        child: child!,
      ),

      theme: roseTheme.toApproximateMaterialTheme(),
      darkTheme: FThemes.rose.dark.toApproximateMaterialTheme(),

      localizationsDelegates: FLocalizations.localizationsDelegates,
      supportedLocales: FLocalizations.supportedLocales,
    );
  }
}

