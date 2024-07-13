import 'package:canna/app/core/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    controller.goToNextScreen();
    return Scaffold(
        backgroundColor: AppColors.black,
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                width: Get.width * 0.8,
                height: Get.height * 0.35,
                "assets/images/logo2.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Image.asset(
                "assets/images/namelogo.png",
                fit: BoxFit.cover,
                width: Get.width * 0.7,
              ),
            ],
          ),
        ));
  }
}
