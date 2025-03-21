import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFFFEFDC),
  colorScheme: ColorScheme.light(
    primary: const Color(0xFF5B59F3),
    onPrimary: const Color(0xFFFFFFFF),
    secondary: const Color(0xFFE3BC93),
    tertiary: const Color(0xFF383B9C),
  ),
  useMaterial3: true,
);

final ThemeData darkAppTheme = appTheme;

ThemeData buildTheme(brightness) {
  final baseTheme = brightness == Brightness.light ? appTheme : darkAppTheme;

  return baseTheme.copyWith(
    textTheme: GoogleFonts.bricolageGrotesqueTextTheme(baseTheme.textTheme)
        .apply(
          displayColor: baseTheme.colorScheme.primary,
          bodyColor: baseTheme.colorScheme.primary,
        )
        .copyWith(
          headlineLarge: GoogleFonts.bricolageGrotesque(
            fontSize: 48,
            fontWeight: FontWeight.w900,
            color: baseTheme.colorScheme.primary,
          ),
          titleLarge: GoogleFonts.bricolageGrotesque(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: baseTheme.colorScheme.primary,
          ),
        ),
  );
}
