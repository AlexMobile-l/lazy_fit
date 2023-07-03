import 'dart:ui';

import 'package:flutter/material.dart';

class Gradients {
  static const mainBGGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0XFF120038),
      Color(0XFF3F005C),
      Color(0XFF3F005C),
      Color(0XFF120038),
    ],
    stops: [0, 0.4, 0.6, 1],
  );

  static const playButtonGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0XFF4F3DBD),
      Color(0XFF7E1587),
    ],
    stops: [0, 1],
  );

  static const playButtonInnerGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0XFFB725C3),
      Color(0XFF4F3DBD),
    ],
    stops: [0, 1],
  );

  static const rarialButtonGradient = RadialGradient(
    colors: [
      Color(0X40A06CB9),
      Colors.transparent,
    ],
    radius: 0.8,
    stops: [0.2, 1],
  );
  static const rarialMainGradient = RadialGradient(
    colors: [
      Color(0XB3FFE7C3),
      Color(0X70FFE7C3),
      Colors.transparent,
    ],
    radius: 1.5,
    stops: [0, 0.3, 1],
    center: Alignment(0, -0.4),
  );
}
