import 'dart:async';

import 'package:canna/app/core/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  @override
  void onInit() {
    goToNextScreen();
    super.onInit();
  }

  goToNextScreen() {
    Timer(Duration(seconds: 3), () {
      Get.offAllNamed(Routes.ONBOSRDING);
    });
  }
}
