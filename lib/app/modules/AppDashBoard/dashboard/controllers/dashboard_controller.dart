import 'dart:collection';

import 'package:canna/app/modules/AppDashBoard/cart/views/cart_view.dart';
import 'package:canna/app/modules/AppDashBoard/event/views/event_view.dart';
import 'package:canna/app/modules/AppDashBoard/favourite/views/favourite_view.dart';
import 'package:canna/app/modules/AppDashBoard/home/views/home_view.dart';
import 'package:canna/app/modules/AppDashBoard/map/views/map_view.dart';
import 'package:canna/app/modules/AppDashBoard/profile/views/profile_view.dart';
import 'package:canna/app/modules/AppDashBoard/scan/views/scan_view.dart';
import 'package:canna/app/modules/AppDashBoard/shop/views/shop_view.dart';
import 'package:canna/app/modules/AppDashBoard/subscription/view.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

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
//....................................................................................................

  var index = 0.obs;

  void ontapp(int value) {
    index.value = value;
  }

  static List pages = [
    HomeView(),
    ShopView(),
    CartView(),
    FavouriteView(),
    MapView(),
    SubscriptionsView(),
    ScanView(),
    EventView(),
    ProfileView()
  ];
}
