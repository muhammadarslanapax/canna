import 'package:canna/app/modules/AppDashBoard/cart/controllers/cart_controller.dart';
import 'package:canna/app/modules/AppDashBoard/event/controllers/event_controller.dart';
import 'package:canna/app/modules/AppDashBoard/favourite/controllers/favourite_controller.dart';
import 'package:canna/app/modules/AppDashBoard/home/controllers/home_controller.dart';
import 'package:canna/app/modules/AppDashBoard/map/controllers/map_controller.dart';
import 'package:canna/app/modules/AppDashBoard/profile/controllers/profile_controller.dart';
import 'package:canna/app/modules/AppDashBoard/scan/controllers/scan_controller.dart';
import 'package:canna/app/modules/AppDashBoard/shop/controllers/shop_controller.dart';
import 'package:canna/app/modules/AppDashBoard/subscription/controller.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );

    //................ Add All Dashbard dependencies ........................................................

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<ShopController>(
      () => ShopController(),
    );
    Get.lazyPut<CartController>(
      () => CartController(),
    );
    Get.lazyPut<FavouriteController>(
      () => FavouriteController(),
    );
    Get.lazyPut<MapController>(
      () => MapController(),
    );
    Get.lazyPut<SubscriptionsController>(
      () => SubscriptionsController(),
    );
    Get.lazyPut<ScanController>(
      () => ScanController(),
    );
    Get.lazyPut<EventController>(
      () => EventController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
