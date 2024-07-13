import 'package:canna/app/modules/AppDashBoard/dashboard/bindings/dashboard_binding.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
    DashboardBinding().dependencies();
  }
}
