import 'dart:developer';

import 'package:canna/app/core/const/resource.dart';
import 'package:canna/app/core/utils/colors.dart';
import 'package:canna/app/core/utils/style.dart';
import 'package:canna/app/core/widget/custom_btn.dart';
import 'package:canna/app/core/widget/customfield.dart';
import 'package:canna/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

class Onboarding01View extends GetView<OnboardingController> with Style {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(gradient: AppColors.bgGradient),
            width: Get.width,
            height: Get.height,
            padding: defaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset(
                    R.ASSETS_IMAGES_LANGUAGE_SVG,
                    width: 17,
                    height: 21,
                    fit: BoxFit.cover,
                  ),
                ),
                spacerh(Get.height * 0.025),
                Image.asset(
                  "assets/images/logo1.png",
                  width: 100,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                spacerh(Get.height * 0.04),
                Obx(() {
                  if (controller.current.value != 0) {
                    return const Spacer();
                  } else {
                    return const SizedBox();
                  }
                }),

                SizedBox(
                  width: Get.width,
                  height: Get.height * 0.22,
                  child: PageView.builder(
                    onPageChanged: (val) {
                      controller.current.value = val;
                    },
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.onboardingList.length,
                    controller: controller.pageController.value,
                    itemBuilder: (context, index) {
                      final model = controller.onboardingList[index];
                      return Container(
                        width: Get.width,
                        height: Get.height,
                        padding: defaultPadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              model.title!,
                              style: normalStyle,
                            ),
                            spacerh(Get.height * 0.01),
                            Text(
                              model.subtitle!,
                              style: largeStyle,
                            ),
                            spacerh(Get.height * 0.01),
                            Text(
                              textAlign: TextAlign.center,
                              model.description!,
                              style: defaultStyle,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                spacerh(Get.height * 0.05),
                //  Spacer(),
                CustomBtn(
                  press: () {
                    if (controller.current.value !=
                        controller.onboardingList.length - 1) {
                      controller.pageController.value
                          .jumpToPage(controller.current.value + 1);
                    } else {
                      //controller.pageController.value.jumpToPage(0);
                    }
                  },
                  text: 'Get Started',
                  btncolor: AppColors.red,
                ),

                spacerh(Get.height * 0.05),

                Obx(() {
                  if (controller.current.value == 0) {
                    return const Spacer();
                  } else {
                    return const SizedBox();
                  }
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.onboardingList.length,
                    (index) {
                      return Obx(() => Container(
                            width: 10,
                            height: 10,
                            margin: const EdgeInsets.only(
                                bottom: 10, left: 5, right: 5),
                            decoration: BoxDecoration(
                                color: controller.current.value == index
                                    ? AppColors.red
                                    : AppColors.green,
                                shape: BoxShape.circle),
                          ));
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
