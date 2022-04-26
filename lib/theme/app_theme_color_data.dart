import 'package:flutter/material.dart';

class AppThemeColorData {
  final Color primary;
  final Color onPrimary;
  final Color surface;
  final Color onSurface;
  final Color background;
  const AppThemeColorData({
    required this.primary,
    required this.onPrimary,
    required this.surface,
    required this.background,
    required this.onSurface,
  });

  @override
  String toString() {
    return "Primary: ${primary.toString()}\nonPrimary: ${onPrimary.toString()}\nsurface: ${surface.toString()}\nonSurface: ${onSurface.toString()}\nbackground: ${background.toString()}";
  }
}
