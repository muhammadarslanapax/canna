import 'package:flutter/material.dart';

class AppColors {
  static Color green = Color(0xff006838);
  static Color red = const Color(0xffC62927);

  static const black = Colors.black;
  static const white = Colors.white;
  static const blue = Colors.blue;
  static const yellow = Colors.yellow;
  static const homeback = Color(0xffe5d4c0);
  static const homeback2 = Color(0xffeeeae4);
  static const grey = Colors.grey;
  static LinearGradient get bgGradient => LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            AppColors.red,
            AppColors.green,
            AppColors.green,
            AppColors.green,
            AppColors.red
          ]);

  //........Fahad makes.............................................
  static LinearGradient bottomNavgradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      AppColors.red,
      AppColors.green,
    ],
  );
  static LinearGradient scaffoldColor = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      AppColors.red,
      AppColors.green,
      AppColors.green,
      AppColors.green,
      AppColors.red,
    ],
  );
  static LinearGradient homebackColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.center,
    colors: const [AppColors.homeback, AppColors.homeback2, AppColors.homeback],
  );
}
