import 'package:canna/app/core/const/resource.dart';
import 'package:canna/app/core/utils/colors.dart';
import 'package:canna/app/core/utils/style.dart';
import 'package:canna/app/core/widget/custom_btn.dart';
import 'package:canna/app/core/widget/customfield.dart';
import 'package:canna/app/modules/auth/signup/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:language_picker/language_picker_dialog.dart';
import 'package:language_picker/languages.dart';

class SignupWithUserInfoView extends GetView<SignupController> with Style {
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
                "Find Quality Cannabis Products Available.",
                style: largeStyle.copyWith(
                    fontWeight: FontWeight.w700, fontSize: 28),
              ),
              spacerh(Get.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "User Name",
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
                  "Email",
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
                  "Password",
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
                  "City",
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
                controller: controller.cityinfoContrller.value,
                hinttext: "Canada",
              ),
              spacerh(Get.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Select Province",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                icon: true,
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.provinceinfoContrller.value,
                hinttext: " ",
              ),
              spacerh(Get.height * 0.03),
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
              CustomBtn(press: () {}, text: "Sign Up", btncolor: AppColors.red),
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
