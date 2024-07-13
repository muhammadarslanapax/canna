import 'package:canna/app/core/const/resource.dart';
import 'package:canna/app/core/routes/app_pages.dart';
import 'package:canna/app/core/utils/colors.dart';
import 'package:canna/app/core/utils/style.dart';
import 'package:canna/app/core/widget/custom_btn.dart';
import 'package:canna/app/core/widget/customfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> with Style {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
              spacerh(Get.height * 0.02),
              SvgPicture.asset(
                R.ASSETS_IMAGES_STAR_SVG,
                width: 100,
                height: 80,
                fit: BoxFit.cover,
              ),
              spacerh(Get.height * 0.075),
              Text(
                "Welcome to ",
                style: normalStyle,
              ),
              Text(
                "Canna View",
                style: largeStyle,
              ),
              spacerh(Get.height * 0.05),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Where are you from?",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.termController.value,
                hinttext: "Enter your province",
              ),
              const Spacer(),
              Obx(() => Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Checkbox(
                            side: const BorderSide(color: AppColors.white),
                            activeColor: AppColors.white,
                            checkColor: AppColors.green,
                            value: controller.conSelect.value,
                            onChanged: (val) {
                              controller.conSelect.value = val!;
                            }),
                      ),
                      Expanded(
                        child: Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          "By accessing this app, you accept the Terms of Use and Privacy Policy",
                          style: defaultStyle,
                        ),
                      )
                    ],
                  )),
              spacerh(Get.height * 0.03),
              CustomBtn(
                  press: () {
                    if (controller.termController.value.text.isNotEmpty &&
                        controller.conSelect.value == true) {
                      Get.offAllNamed(Routes.ONBOSRDING01);
                    }
                  },
                  text: "Next",
                  btncolor: Colors.red)
            ],
          ),
        ),
      ),
    );
  }
}
