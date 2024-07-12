import 'package:canna/app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.controller,
    this.hinttext,
    this.validator,
    this.readonly,
    this.icon, this.press,
  });

  final TextEditingController controller;
  final String? hinttext;
  final String? Function(String?)? validator;
  final bool? readonly;
  final bool? icon;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      onTap:press ,
        readOnly: readonly ?? false,
        validator: validator,
        controller: controller,
        cursorColor: AppColors.white,
        style: const TextStyle(color: AppColors.white),
        decoration: InputDecoration(
          suffixIcon: icon == true
              ? Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.white,
                )
              : null,
          isCollapsed: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          hintText: hinttext,
          hintStyle: const TextStyle(
              color: AppColors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 12),
          isDense: true,
          errorMaxLines: 1,
          errorStyle: const TextStyle(fontSize: 0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.white.withOpacity(0.7)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.white),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.red),
          ),
        ));
  }
}
