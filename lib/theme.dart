import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 131, 56, 236),
  primary: const Color.fromARGB(255, 131, 56, 236),
  secondary: const Color.fromARGB(255, 205, 175, 247),
);

final ThemeData theme = ThemeData().copyWith(
  useMaterial3: true,
  colorScheme: colorScheme,
  textTheme: const TextTheme().copyWith(
    // defaults can be found here: https://api.flutter.dev/flutter/material/TextTheme-class.html
    displayLarge: const TextStyle(
      fontSize: 57,
      height: 64,
    ),
    displayMedium: const TextStyle(
      fontSize: 45,
      height: 52,
    ),
    displaySmall: const TextStyle(
      fontSize: 36,
      height: 44,
    ),
    headlineLarge: const TextStyle(
      fontSize: 32,
      height: 40,
    ),
    headlineMedium: const TextStyle(
      fontSize: 28,
      height: 36,
    ),
    headlineSmall: const TextStyle(
      fontSize: 24,
      height: 32,
    ),
    titleLarge: const TextStyle(
      fontSize: 22,
      height: 28,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: const TextStyle(
      fontSize: 16,
      height: 24,
      letterSpacing: 0.15,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle(
      fontSize: 14,
      height: 20,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: const TextStyle(
      fontSize: 14,
      height: 20,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: const TextStyle(
      fontSize: 12,
      height: 16,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: const TextStyle(
      fontSize: 11,
      height: 16,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: const TextStyle(
      fontSize: 16,
      height: 24,
      letterSpacing: 0.15,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14,
      height: 20,
      letterSpacing: 0.25,
    ),
    bodySmall: const TextStyle(
      fontSize: 12,
      height: 16,
      letterSpacing: 0.4,
    ),
  ),
  appBarTheme: const AppBarTheme().copyWith(
    titleTextStyle: GoogleFonts.lobsterTwo(
      letterSpacing: 2.5,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: const IconThemeData().copyWith(
      color: colorScheme.onPrimary,
      size: 35,
    ),
    backgroundColor: colorScheme.primary,
    foregroundColor: colorScheme.onPrimary,
  ),
  cardTheme: const CardTheme().copyWith(
    color: colorScheme.secondary,
    margin: const EdgeInsets.all(10),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      backgroundColor: colorScheme.primaryContainer,
      textStyle: TextStyle(
        fontSize: 17,
        color: colorScheme.onPrimaryContainer,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: TextStyle(fontSize: 15, color: colorScheme.primary),
    ),
  ),
);
