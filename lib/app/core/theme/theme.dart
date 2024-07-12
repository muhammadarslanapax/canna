import 'package:canna/app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.white),
      useMaterial3: false,
      brightness: Brightness.light);
}
