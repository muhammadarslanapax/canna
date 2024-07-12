import 'package:canna/app/core/const/resource.dart';
import 'package:canna/app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomBtn extends StatelessWidget with Style {
  double? width;
  double? height;
  TextStyle? textstyle;
  void Function() press;
  String text;
  Color btncolor;
  Color? txtcolor;
  CustomBtn(
      {super.key,
      required this.press,
      required this.text,
      required this.btncolor,
      this.txtcolor,
      this.width,
      this.textstyle,
      this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            fixedSize: Size(width ?? Get.width, height ?? 50),
            backgroundColor: btncolor),
        onPressed: press,
        child: Text(
          text,
          style: textstyle ??
              defaultStyle.copyWith(
                  color: txtcolor, fontSize: 20, fontWeight: FontWeight.w700),
        ));
  }
}

class CustomBtnicon extends StatelessWidget with Style {
  double? width;
  double? height;
  TextStyle? textstyle;
  void Function() press;
  String text;
  String path;
  Color btncolor;
  Color? txtcolor;
  CustomBtnicon(
      {super.key,
      required this.press,
      required this.text,
      required this.btncolor,
      this.txtcolor,
      this.width,
       required this.path,
      this.textstyle,
      this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            fixedSize: Size(width ?? Get.width, height ?? 50),
            backgroundColor: btncolor),
        onPressed: press,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            spacerw(Get.width * 0.02),
            SvgPicture.asset(path),
            spacerw(Get.width * 0.08),
            Text(
              text,
              style: textstyle ??
                  defaultStyle.copyWith(
                      color: txtcolor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
            ),
          ],
        ));
  }
}
