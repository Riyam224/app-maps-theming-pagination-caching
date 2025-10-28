// import 'package:flutter/material.dart';

// class AppColors {
//   static const celadon = Color(0xFFB8D8BA);
//   static const beige = Color(0xFFD9DBBC);
//   static const lightOrange = Color(0xFFFCDBBC);
//   static const salmonPink = Color(0xFFEF959D);
//   static const wenge = Color(0xFF69585F);
// }

import 'package:flutter/material.dart';

class AppColors {
  // Base Palette
  static const Color deepCoffee = Color(0xFF5E4534);
  static const Color terracotta = Color(0xFFB36B5A);
  static const Color caramel = Color(0xFFC8A480);
  static const Color sage = Color(0xFFC5D890);
  static const Color butter = Color(0xFFF5F3C1);

  // Light Theme
  static const Color lightBackground = butter;
  static const Color lightPrimary = sage;
  static const Color lightText = Colors.black87;

  // Dark Theme
  static const Color darkBackground = deepCoffee;
  static const Color darkPrimary = terracotta;
  static const Color darkText = Colors.white70;

  // Custom Theme (warm & soft)
  static const Color customBackground = caramel;
  static const Color customPrimary = terracotta;
  static const Color customText = Colors.white;
}
