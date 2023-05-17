import 'package:flutter/material.dart';

class ThemeTextStyle {
  static const fontFamily = "Roboto";

  static double _getFontSize(double fontSize) {
    return fontSize;
  }

  static TextStyle get s30w600 => TextStyle(
        fontFamily: fontFamily,
        fontSize: _getFontSize(30),
        fontWeight: FontWeight.w600,
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
