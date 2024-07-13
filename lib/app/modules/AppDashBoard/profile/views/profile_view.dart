import 'package:canna/app/core/utils/colors.dart';
import 'package:canna/app/core/utils/style.dart';
import 'package:canna/app/core/widget/custom_btn.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> with Style {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppColors.bgGradient),
      width: Get.width,
      height: Get.height,
      padding: defaultPadding.copyWith(bottom: 0),
      child: ListView(
        children: [
          Column(
            children: [
              //................ Profile ........................................................

              ListTile(
                dense: true,
                horizontalTitleGap: 0,
                isThreeLine: false,
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/profile.png",
                  ),
                  radius: 32,
                ),
                title: Row(
                  children: [
                    Text(
                      "Hello",
                      style: largeStyle.copyWith(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: AppColors.white,
                        ))
                  ],
                ),
                subtitle: Text(
                  "arsl@gmail.com",
                  style: defaultStyle.copyWith(fontWeight: FontWeight.w300),
                ),
              )

              //................ product inventry........................................................

              ,
              spacerh(Get.height * 0.03),

              Divider(
                color: AppColors.white,
                thickness: 1,
              ),
              spacerh(Get.height * 0.01),

              Obx(() => InkWell(
                    onTap: () {
                      controller.showOrder.value = !controller.showOrder.value;
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/inventryicon.png"),
                        spacerw(Get.width * 0.04),
                        Text(
                          "Products inventory",
                          style:
                              normalStyle.copyWith(fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Icon(
                          controller.showOrder.value
                              ? Icons.arrow_forward_ios_sharp
                              : Icons.keyboard_arrow_down_outlined,
                          color: AppColors.white,
                        )
                      ],
                    ),
                  )),
              spacerh(Get.height * 0.01),

              Divider(
                color: AppColors.white,
                thickness: 1,
              ),

              //................ App inventry itmes........................................................

              Container(
                  padding: defaultPadding.copyWith(
                      left: 8, right: 8, top: 3, bottom: 3),
                  width: Get.width,
                  height: Get.height * 0.5,
                  child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.delete_forever,
                                  color: AppColors.green,
                                  size: 20,
                                ),
                                spacerw(10.0),
                                Icon(
                                  Icons.edit_calendar_outlined,
                                  color: AppColors.green,
                                  size: 20,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/leaf.png",
                                  fit: BoxFit.cover,
                                  width: Get.width * 0.22,
                                  height: Get.width * 0.22,
                                ),
                                Text(
                                  "El Jefe",
                                  style: defaultStyle.copyWith(
                                      color: AppColors.black),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  )),

              spacerh(Get.height * 0.01),

              Obx(() => InkWell(
                    onTap: () {
                      controller.showOrder.value = !controller.showOrder.value;
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/detailicon.png"),
                        spacerw(Get.width * 0.04),
                        Text(
                          "My Details",
                          style:
                              normalStyle.copyWith(fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Icon(
                          controller.showOrder.value
                              ? Icons.arrow_forward_ios_sharp
                              : Icons.keyboard_arrow_down_outlined,
                          color: AppColors.white,
                        )
                      ],
                    ),
                  )),

              spacerh(Get.height * 0.01),

              Divider(
                color: AppColors.white,
                thickness: 1,
              ),

              spacerh(Get.height * 0.01),

              Obx(() => InkWell(
                    onTap: () {
                      controller.showOrder.value = !controller.showOrder.value;
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/notificationicon.png"),
                        spacerw(Get.width * 0.04),
                        Text(
                          "Notifications",
                          style:
                              normalStyle.copyWith(fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Icon(
                          controller.showOrder.value
                              ? Icons.arrow_forward_ios_sharp
                              : Icons.keyboard_arrow_down_outlined,
                          color: AppColors.white,
                        )
                      ],
                    ),
                  )),

              spacerh(Get.height * 0.01),
              Divider(
                color: AppColors.white,
                thickness: 1,
              ),

              spacerh(Get.height * 0.01),

              Obx(() => InkWell(
                    onTap: () {
                      controller.showOrder.value = !controller.showOrder.value;
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/helpicon.png"),
                        spacerw(Get.width * 0.04),
                        Text(
                          "Help",
                          style:
                              normalStyle.copyWith(fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Icon(
                          controller.showOrder.value
                              ? Icons.arrow_forward_ios_sharp
                              : Icons.keyboard_arrow_down_outlined,
                          color: AppColors.white,
                        )
                      ],
                    ),
                  )),

              spacerh(Get.height * 0.01),

              Divider(
                color: AppColors.white,
                thickness: 1,
              ),

              spacerh(Get.height * 0.01),

              Obx(() => InkWell(
                    onTap: () {
                      controller.showOrder.value = !controller.showOrder.value;
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/abouticon.png"),
                        spacerw(Get.width * 0.04),
                        Text(
                          "About",
                          style:
                              normalStyle.copyWith(fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Icon(
                          controller.showOrder.value
                              ? Icons.arrow_forward_ios_sharp
                              : Icons.keyboard_arrow_down_outlined,
                          color: AppColors.white,
                        )
                      ],
                    ),
                  )),
              spacerh(Get.height * 0.01),
              Divider(
                color: AppColors.white,
                thickness: 1,
              ),

              spacerh(Get.height * 0.12),

              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: ElevatedButton.icon(
                    iconAlignment: IconAlignment.start,
                    icon: Image.asset("assets/images/logout.png"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fixedSize: Size(Get.width, 60),
                        backgroundColor: AppColors.white),
                    onPressed: () {},
                    label: Text(
                      "Log Out",
                      style: normalStyle.copyWith(color: AppColors.red),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
