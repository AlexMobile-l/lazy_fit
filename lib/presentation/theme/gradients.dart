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

  static const rarialButtonGradient = RadialGradient(
    colors: [
      Color(0X40A06CB9),
      Colors.transparent,
    ],
    radius: 0.8,
    stops: [0.2, 1],
  );
}
