import 'package:canna/app/core/const/resource.dart';
import 'package:canna/app/core/routes/app_pages.dart';
import 'package:canna/app/core/utils/colors.dart';
import 'package:canna/app/core/utils/style.dart';
import 'package:canna/app/core/widget/custom_btn.dart';
import 'package:canna/app/core/widget/customfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:language_picker/language_picker_dialog.dart';
import 'package:language_picker/languages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> with Style {
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
                "Login",
                style: largeStyle.copyWith(
                    fontWeight: FontWeight.w700, fontSize: 28),
              ),
              spacerh(Get.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email or username",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.emailContrller.value,
                hinttext: "jhondoe@gmail.com",
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
                controller: controller.passwordContrller.value,
                hinttext: "",
              ),
              spacerh(Get.height * 0.01),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "8 characters or more",
                  style: smallStyle.copyWith(
                      color: AppColors.white.withOpacity(0.5)),
                ),
              ),
              spacerh(Get.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Forget Password?",
                  style: smallStyle.copyWith(color: AppColors.white),
                ),
              ),
              spacerh(Get.height * 0.025),
              Obx(() => Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Checkbox(
                            side: BorderSide(
                                color: AppColors.white.withOpacity(0.5)),
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
                          "Remember me. I confirm this is not a shared device.",
                          style: smallStyle.copyWith(
                              color: AppColors.white.withOpacity(0.5)),
                        ),
                      )
                    ],
                  )),
              spacerh(Get.height * 0.02),
              CustomBtn(
                  press: () {
                    if (controller.emailContrller.value.text.isNotEmpty &&
                        controller.passwordContrller.value.text.isNotEmpty) {
                      Get.offAllNamed(Routes.DASHBOARD);
                    }
                  },
                  text: "Log In",
                  btncolor: AppColors.red),
              spacerh(Get.height * 0.02),
              Text(
                "Or connect with social media",
                style: smallStyle.copyWith(
                    color: AppColors.white.withOpacity(0.5)),
              ),
              spacerh(Get.height * 0.02),
              CustomBtnicon(
                textstyle: defaultStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w400),
                press: () {},
                text: "Continue with Google",
                btncolor: AppColors.blue,
                path: R.ASSETS_IMAGES_GOOGLE_SVG,
              ),
              spacerh(Get.height * 0.02),
              CustomBtnicon(
                textstyle: defaultStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w400),
                press: () {},
                text: "Continue with Facebook",
                btncolor: Color(0xff4A66AC),
                path: R.ASSETS_IMAGES_FACEBOOK_SVG,
              ),
              spacerh(Get.height * 0.02),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.SIGNUP);
                },
                child: Text(
                  "Create a account",
                  style: smallStyle.copyWith(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white),
                ),
              ),
              spacerh(Get.height * 0.02),
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
}
