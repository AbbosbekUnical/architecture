import 'package:flutter/material.dart';

final appTheme = ThemeData(
  useMaterial3: true,
  applyElevationOverlayColor: true,
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
    },
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  materialTapTargetSize: MaterialTapTargetSize.padded,
);

final ThemeData lightTheme = appTheme.copyWith(
  primaryColor: Colors.orange,
  iconTheme: const IconThemeData(color: Colors.black),
  colorScheme: const ColorScheme.light(
    brightness: Brightness.light,
    primary: Colors.orange,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
  canvasColor: Colors.white,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      // fontFamily: Constants.fontName,
      fontWeight: FontWeight.w400,
      fontSize: 56,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      // fontFamily: Constants.fontName,
      fontWeight: FontWeight.w400,
      fontSize: 45,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      // fontFamily: Constants.fontName,
      fontWeight: FontWeight.w400,
      fontSize: 36,
      color: Colors.black,
    ),
    headlineLarge: TextStyle(
      // fontFamily: Constants.fontName,
      fontWeight: FontWeight.w400,
      fontSize: 32,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 28,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headlineSmall: TextStyle(
      // fontFamily: Constants.fontName,
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: Colors.black,
    ),
    titleLarge: TextStyle(
      // fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
    labelLarge: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w300,
    ),
  ),
);

final ThemeData darkTheme = appTheme.copyWith(
  primaryColor: Colors.orange,
  iconTheme: const IconThemeData(color: Colors.white),
  colorScheme: const ColorScheme.dark(
    brightness: Brightness.dark,
    primary: Colors.orange,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
  canvasColor: Colors.black,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      // fontFamily: Constants.fontName,
      fontWeight: FontWeight.w400,
      fontSize: 56,
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      // fontFamily: Constants.fontName,
      fontWeight: FontWeight.w400,
      fontSize: 45,
      color: Colors.white,
    ),
    displaySmall: TextStyle(
      // fontFamily: Constants.fontName,
      fontWeight: FontWeight.w400,
      fontSize: 36,
      color: Colors.white,
    ),
    headlineLarge: TextStyle(
      // fontFamily: Constants.fontName,
      fontWeight: FontWeight.w400,
      fontSize: 32,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 28,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      // fontFamily: Constants.fontName,
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: Colors.white,
    ),
    titleLarge: TextStyle(
      // fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    ),
    labelLarge: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      // fontFamily: Constants.fontName,
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w300,
    ),
  ),
);
