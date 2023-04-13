import 'package:flutter/material.dart';

class ThemeTextStyle {
  static const fontFamily = "Fredoka";

  static double _getFontSize(double fontSize) {
    return fontSize;
  }

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
