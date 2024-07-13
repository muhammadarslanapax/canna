import 'package:canna/app/core/const/resource.dart';
import 'package:canna/app/core/utils/colors.dart';
import 'package:canna/app/modules/AppDashBoard/dashboard/bindings/dashboard_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    DashboardBinding().dependencies();
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.red,
      body: SafeArea(
        child: Obx(
          () {
            return DashboardController.pages[controller.index.value];
          },
        ),
      ),
      bottomNavigationBar: Obx(
        () {
          return Container(
            //   padding: EdgeInsets.all(height * 0.003),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.red,
                    AppColors.green,
                  ],
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            height: height * 0.1,
            child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                currentIndex: controller.index.value,
                onTap: controller.ontapp,
                selectedItemColor: AppColors.white,
                unselectedItemColor: AppColors.white,
                unselectedFontSize: height * 0.018,
                type: BottomNavigationBarType.fixed,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: 'Home',
                    icon: SvgPicture.asset(
                      R.ASSETS_BOTTOMNAV_HOME_SVG,
                      width: width * 0.03,
                      height: height * 0.03,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Shop',
                    icon: SvgPicture.asset(
                      R.ASSETS_BOTTOMNAV_SHOP_SVG,
                      width: width * 0.03,
                      height: height * 0.03,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Cart',
                    icon: SvgPicture.asset(
                      R.ASSETS_BOTTOMNAV_CART_SVG,
                      width: width * 0.03,
                      height: height * 0.03,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Favourite',
                    icon: SvgPicture.asset(
                      R.ASSETS_BOTTOMNAV_FAVOURITE_SVG,
                      width: width * 0.03,
                      height: height * 0.03,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Map',
                    icon: Icon(Icons.map_outlined),
                  ),
                  BottomNavigationBarItem(
                    label: 'Subscription',
                    icon: SvgPicture.asset(
                      R.ASSETS_BOTTOMNAV_SUBSCRIPTION_SVG,
                      width: width * 0.03,
                      height: height * 0.03,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Scan',
                    icon: Icon(Icons.place),
                  ),
                  BottomNavigationBarItem(
                    label: 'Events',
                    icon: SvgPicture.asset(
                      R.ASSETS_BOTTOMNAV_EVENTS_SVG,
                      width: width * 0.03,
                      height: height * 0.03,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Profile',
                    icon: SvgPicture.asset(
                      R.ASSETS_BOTTOMNAV_PROFILE_SVG,
                      width: width * 0.03,
                      height: height * 0.03,
                    ),
                  ),
                ]),
          );
        },
      ),
    );
  }
}
