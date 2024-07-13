import 'package:canna/app/core/utils/colors.dart';
import 'package:flutter/material.dart';

mixin class Style {
  EdgeInsets defaultPadding =
      const EdgeInsets.symmetric(horizontal: 16, vertical: 16);

  TextStyle smallStyle = const TextStyle(
      color: AppColors.white, fontSize: 12, fontWeight: FontWeight.w400);

  TextStyle defaultStyle = const TextStyle(
      color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w400);

  TextStyle normalStyle = const TextStyle(
      color: AppColors.white, fontSize: 18, fontWeight: FontWeight.w400);

  TextStyle largeStyle = const TextStyle(
      color: AppColors.white, fontSize: 25, fontWeight: FontWeight.w400);

  Widget spacerw(w) {
    return SizedBox(
      width: w,
    );
  }

  Widget spacerh(h) {
    return SizedBox(
      height: h,
    );
  }
}
