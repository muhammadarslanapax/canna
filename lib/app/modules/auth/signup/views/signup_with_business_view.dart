import 'package:canna/app/core/const/resource.dart';
import 'package:canna/app/core/routes/app_pages.dart';
import 'package:canna/app/core/utils/colors.dart';
import 'package:canna/app/core/utils/style.dart';
import 'package:canna/app/core/widget/custom_btn.dart';
import 'package:canna/app/core/widget/customfield.dart';
import 'package:canna/app/modules/auth/signup/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:language_picker/language_picker_dialog.dart';
import 'package:language_picker/languages.dart';

class SignupWithBusinessView extends GetView<SignupController> with Style {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: defaultPadding,
          decoration: BoxDecoration(gradient: AppColors.bgGradient),
          width: Get.width,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => Theme(
                          data: Theme.of(context).copyWith(
                              dialogBackgroundColor:
                                  AppColors.black.withOpacity(0.5),
                              primaryColor: AppColors.green),
                          child: LanguagePickerDialog(
                              languages: controller.languageList,
                              onValuePicked: (Language language) {
                                controller.selectedDialogLanguage.value =
                                    language;
                                print(language.name);
                              },
                              itemBuilder: _buildDialogItem)),
                    );
                  },
                  child: SvgPicture.asset(
                    R.ASSETS_IMAGES_LANGUAGE_SVG,
                    width: 17,
                    height: 21,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              spacerh(Get.height * 0.025),
              Image.asset(
                "assets/images/logo1.png",
                width: 100,
                height: 80,
                fit: BoxFit.cover,
              ),
              spacerh(Get.height * 0.05),
              Text(
                textAlign: TextAlign.center,
                "Sign Up as a Business",
                style: largeStyle.copyWith(
                    fontWeight: FontWeight.w700, fontSize: 28),
              ),
              spacerh(Get.height * 0.03),
              Container(
                width: Get.width,
                height: Get.height * 0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.white, width: 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/imagologo.png"),
                    spacerh(Get.height * 0.03),
                    Text(
                      "license Picture",
                      style: defaultStyle.copyWith(fontSize: 18),
                    )
                  ],
                ),
              ),
              spacerh(Get.height * 0.05),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Business Info",
                  style: largeStyle.copyWith(
                      fontWeight: FontWeight.w700, fontSize: 28),
                ),
              ),
              spacerh(Get.height * 0.05),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Business Name*",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.userinfoContrller.value,
                hinttext: " ",
              ),
              spacerh(Get.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Business Phone Number",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.emailinfoContrller.value,
                hinttext: " ",
              ),
              spacerh(Get.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Business Type*",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.passinfoContrller.value,
                hinttext: " ",
              ),
              spacerh(Get.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Business Website",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.cityinfoContrller.value,
              ),
              spacerh(Get.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email address*",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.provinceinfoContrller.value,
                hinttext: " ",
              ),
              spacerh(Get.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Busiress Description* Minimum Character Count Required 0/20",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              SizedBox(
                width: Get.width,
                height: Get.height * 0.2,
                child: TextFormField(
                  cursorColor: AppColors.white,
                  style: const TextStyle(color: AppColors.white),
                  maxLines: 5,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          BorderSide(color: AppColors.white.withOpacity(0.7)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: AppColors.white),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: AppColors.red),
                    ),
                  ),
                ),
              ),
              spacerh(Get.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Business Tags (keyword searches)",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.provinceinfoContrller.value,
                hinttext: " ",
              ),
              spacerh(Get.height * 0.05),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Location",
                  style: largeStyle.copyWith(
                      fontWeight: FontWeight.w700, fontSize: 28),
                ),
              ),
              spacerh(Get.height * 0.05),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Default Sorting For Product Menu",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.provinceinfoContrller.value,
                hinttext: " ",
              ),
              spacerh(Get.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Business Tags (keyword searches)",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                icon: true,
                readonly: true,
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.provinceinfoContrller.value,
                hinttext: "Weed First",
              ),
              spacerh(Get.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Postal Code",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                icon: true,
                readonly: true,
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.provinceinfoContrller.value,
                hinttext: "",
              ),
              spacerh(Get.height * 0.05),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Legal Entity",
                  style: largeStyle.copyWith(
                      fontWeight: FontWeight.w700, fontSize: 28),
                ),
              ),
              spacerh(Get.height * 0.05),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "License Number",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                icon: true,
                readonly: true,
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.provinceinfoContrller.value,
                hinttext: "",
              ),
              spacerh(Get.height * 0.05),
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
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          "I agree to receive offers ror cannabis deals and emails regarding contests and giveaways from Canna View. I understand that I can unsubscribe atany time.",
                          style: defaultStyle,
                        ),
                      )
                    ],
                  )),
              spacerh(Get.height * 0.03),
              CustomBtn(
                  press: () {
                    Get.offAllNamed(Routes.DASHBOARD);
                  },
                  text: "Sign Up",
                  btncolor: AppColors.red),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _buildDialogItem(Language language) => Row(
        children: <Widget>[
          Text(
            language.name,
            style: TextStyle(color: AppColors.white),
          ),
          const SizedBox(width: 8.0),
          Flexible(
              child: Text(
            "(${language.isoCode})",
            style: TextStyle(color: AppColors.white),
          ))
        ],
      );

  Color getColor(Set<MaterialState> states) {
    return Colors.white;
  }
}
