import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class SubscriptionsController extends GetxController {


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}