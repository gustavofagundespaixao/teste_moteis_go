// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AppColors {
  static final Color _color = Color(0xffE12129);

  static MaterialColor get primaryColor {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = _color.red, g = _color.green, b = _color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(_color.value, swatch);
  }
}
