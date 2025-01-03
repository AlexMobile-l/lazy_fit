import 'package:flutter/material.dart';

class ThemeTextStyle {
  static const fontFamily = "Fredoka";

  static double _getFontSize(double fontSize) {
    return fontSize;
  }

  static TextStyle get s90w600 => TextStyle(
        fontFamily: fontFamily,
        fontSize: _getFontSize(90),
        fontWeight: FontWeight.w600,
      );

  static TextStyle get s80w600 => TextStyle(
        fontFamily: fontFamily,
        fontSize: _getFontSize(80),
        fontWeight: FontWeight.w600,
      );

  static TextStyle get s70w600 => TextStyle(
        fontFamily: fontFamily,
        fontSize: _getFontSize(70),
        fontWeight: FontWeight.w600,
      );

  static TextStyle get s60w600 => TextStyle(
        fontFamily: fontFamily,
        fontSize: _getFontSize(60),
        fontWeight: FontWeight.w600,
      );

  static TextStyle get s30w600 => TextStyle(
        fontFamily: fontFamily,
        fontSize: _getFontSize(30),
        fontWeight: FontWeight.w600,
      );

  static TextStyle get s24w400 => TextStyle(
        fontFamily: fontFamily,
        fontSize: _getFontSize(24),
        fontWeight: FontWeight.w400,
      );

  static TextStyle get s22w600 => TextStyle(
        fontFamily: fontFamily,
        fontSize: _getFontSize(22),
        fontWeight: FontWeight.w600,
      );

  static TextStyle get s18w600 => TextStyle(
        fontFamily: fontFamily,
        fontSize: _getFontSize(18),
        fontWeight: FontWeight.w600,
      );

  static TextStyle get s16w400 => TextStyle(
        fontFamily: fontFamily,
        fontSize: _getFontSize(16),
        fontWeight: FontWeight.w400,
      );

  static TextStyle get s14w600 => TextStyle(
        fontFamily: fontFamily,
        fontSize: _getFontSize(14),
        fontWeight: FontWeight.w600,
      );

  static TextStyle get s14w400 => TextStyle(
        fontFamily: fontFamily,
        fontSize: _getFontSize(14),
        fontWeight: FontWeight.w400,
      );
}
