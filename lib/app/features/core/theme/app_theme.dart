import 'package:financy_app/app/features/core/_export_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: ColorConstant.greenPrimary, width: 2.0),
  );
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: ColorConstant.greenPrimary,
    ),
    textTheme: GoogleFonts.interTextTheme().copyWith(
      displayLarge: GoogleFonts.inter(
        fontSize: 50.0,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      headlineLarge: GoogleFonts.inter(
        fontSize: 36.0,
        fontWeight: FontWeight.bold,
        color: ColorConstant.greenPrimary,
      ),
      bodyLarge: GoogleFonts.inter(color: ColorConstant.greenPrimary),
      labelLarge: GoogleFonts.inter(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: ColorConstant.greenPrimary,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      errorStyle: GoogleFonts.inter(
        color: ColorConstant.redErrorTextFormField,
        fontWeight: FontWeight.w400,
      ),
      border: _outlineInputBorder,
      focusedBorder: _outlineInputBorder,
      enabledBorder: _outlineInputBorder,
      errorBorder: _outlineInputBorder.copyWith(
        borderSide: const BorderSide(color: ColorConstant.redErrorColor),
      ),
      focusedErrorBorder: _outlineInputBorder.copyWith(
        borderSide: const BorderSide(color: ColorConstant.redErrorColor),
      ),
      labelStyle: GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        color: ColorConstant.greySecondary,
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: GoogleFonts.inter().fontFamily,
  );
}
