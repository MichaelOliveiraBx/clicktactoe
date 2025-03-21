import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:clicktactoe/modules/design/theme/AppTheme.dart';
import 'package:clicktactoe/modules/navigation/MainNavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: buildTheme(Brightness.light),
      darkTheme: buildTheme(Brightness.dark),
        themeMode : ThemeMode.dark,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fr'), // English
        Locale('en'), // Spanish
      ],
      routerConfig: mainRoute(),
    );
  }
}
