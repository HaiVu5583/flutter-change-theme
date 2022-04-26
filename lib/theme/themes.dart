import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:switch_theme/theme/app_theme_color_data.dart';
import 'package:switch_theme/theme/text.dart';

enum AppTheme { dark, light }

const lightThemeColorData = AppThemeColorData(
  primary: Colors.purple,
  onPrimary: Colors.white,
  surface: Colors.white,
  background: Colors.white,
  onSurface: Colors.black,
);

const darkThemeColorData = AppThemeColorData(
  primary: Colors.yellow,
  onPrimary: Colors.black,
  surface: Colors.black,
  background: Colors.black54,
  onSurface: Colors.white,
);

final Map<AppTheme, AppThemeColorData> appThemes = {
  AppTheme.light: lightThemeColorData,
  AppTheme.dark: darkThemeColorData,
};

ThemeData getThemeDataFromAppTheme({
  required BuildContext context,
  required AppTheme theme,
}) {
  final currentAppThemeColor = appThemes[theme]!;
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    brightness: theme == AppTheme.light ? Brightness.light : Brightness.dark,
    primaryColor: currentAppThemeColor.primary,
    backgroundColor: currentAppThemeColor.background,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: currentAppThemeColor.primary,
    ),
    appBarTheme: AppBarTheme(backgroundColor: currentAppThemeColor.primary),
    textTheme: GoogleFonts.nunitoSansTextTheme(
      Theme.of(context).textTheme,
    ).apply(
      bodyColor: currentAppThemeColor.onSurface,
      displayColor: currentAppThemeColor.onSurface,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: currentAppThemeColor.primary,
        onPrimary: currentAppThemeColor.onPrimary,
        textStyle: AppTextStyle.body14,
      ),
    ),
    scaffoldBackgroundColor: currentAppThemeColor.background,
  );
}
