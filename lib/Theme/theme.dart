import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_analog_clock/constants/constants.dart';



// Our light/Primary Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      secondary: kSecondaryLightColor,
      background: Colors.white,
      // on light theme surface = Colors.white by default
    ),
    iconTheme: const IconThemeData(color: kBodyTextColorLight),
    //accentIconTheme: IconThemeData(color: kAccentIconLightColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: kAccentIconLightColor,
    ),
    primaryIconTheme: const IconThemeData(color: kPrimaryIconLightColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyLarge: const TextStyle(color: kBodyTextColorLight),
      bodyMedium: const TextStyle(color: kBodyTextColorLight),
      headlineMedium: const TextStyle(color: kTitleTextLightColor, fontSize: 32),
      displayLarge: const TextStyle(color: kTitleTextLightColor, fontSize: 80),
    ),
  );
}

// Dark Them
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    colorScheme: const ColorScheme.light(
      secondary: kAccentDarkColor,
      background: kBackgroundDarkColor,
      surface: kSurfaceDarkColor,
      // on light theme surface = Colors.white by default
    ),
    scaffoldBackgroundColor: const Color(0xFF0D0C0E),
    appBarTheme: appBarTheme,
  
    iconTheme: const IconThemeData(color: kBodyTextColorDark),
    //accentIconTheme: IconThemeData(color: kAccentIconDarkColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: kAccentIconDarkColor,
    ),
    primaryIconTheme: const IconThemeData(color: kPrimaryIconDarkColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyLarge: const TextStyle(color: kBodyTextColorDark),
      bodyMedium: const TextStyle(color: kBodyTextColorDark),
      headlineMedium: const TextStyle(color: kTitleTextDarkColor, fontSize: 32),
      displayLarge: const TextStyle(color: kTitleTextDarkColor, fontSize: 80),
    ),
  );
}

AppBarTheme appBarTheme = const AppBarTheme(color: Colors.transparent, elevation: 0);