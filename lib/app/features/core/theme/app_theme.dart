import 'package:financy_app/app/features/core/_export_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: ColorConstant.greenPrimary,
      onPrimary: ColorConstant.greenOnboarding,
      secondary: ColorConstant.greenOnboarding,
      onSecondary: ColorConstant.greenPrimary,
      error: ColorConstant.redErrorColor,
      onError: ColorConstant.redErrorColor,
      surface: Colors.white,
      onSurface: Colors.white,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: GoogleFonts.inter().fontFamily,
  );
}
