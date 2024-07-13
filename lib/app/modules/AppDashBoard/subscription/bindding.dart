import 'package:canna/app/modules/AppDashBoard/subscription/controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class SubscriptionBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubscriptionsController>(
      () => SubscriptionsController(),
    );
  }
}