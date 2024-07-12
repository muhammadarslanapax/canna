import 'package:flutter/material.dart';

class AppColors {
  static Color green = Color(0xff006838);
  static Color red = const Color(0xffC62927);

  static const black = Colors.black;
  static const white = Colors.white;
  static const blue = Colors.blue;
  static const yellow = Colors.yellow;
  static LinearGradient get bgGradient => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [AppColors.red, AppColors.green, AppColors.red]);
}
