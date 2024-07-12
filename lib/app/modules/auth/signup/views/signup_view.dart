import 'package:canna/app/core/const/resource.dart';
import 'package:canna/app/core/utils/colors.dart';
import 'package:canna/app/core/utils/style.dart';
import 'package:canna/app/core/widget/custom_btn.dart';
import 'package:canna/app/core/widget/customfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:language_picker/language_picker_dialog.dart';
import 'package:language_picker/languages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> with Style {
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
                "Sign Up",
                style: largeStyle.copyWith(
                    fontWeight: FontWeight.w700, fontSize: 28),
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
                controller: controller.emailContrller.value,
                hinttext: "jhondoe@gmail.com",
              ),
              spacerh(Get.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Phone Number",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              IntlPhoneField(
                cursorColor: AppColors.white,
                controller: controller.phoneController.value,
                decoration: InputDecoration(
                  counterStyle: TextStyle(color: AppColors.white),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: AppColors.white, width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: AppColors.white, width: 1)),
                  focusColor: AppColors.white,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  labelText: '',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: AppColors.white),
                      borderRadius: BorderRadius.circular(8)),
                ),
                initialCountryCode: 'IN',
                style: TextStyle(color: AppColors.white),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                dropdownTextStyle: TextStyle(color: AppColors.white),
                disableLengthCheck: false,
                dropdownIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.white,
                ),
              ),
              spacerh(Get.height * 0.005),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign Up As:",
                  style: smallStyle.copyWith(color: AppColors.white),
                ),
              ),
              spacerh(Get.height * 0.02),
              Obx(() => Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                            activeColor: AppColors.red,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            isThreeLine: false,
                            dense: true,
                            contentPadding: EdgeInsets.all(0),
                            title: Text(
                              "Cannabis user",
                              style: smallStyle.copyWith(
                                  color: AppColors.white.withOpacity(0.5)),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            value: 1,
                            groupValue: controller.selectedValue.value,
                            onChanged: (val) {
                              controller.selectedValue.value = val!;
                            }),
                      ),
                      Expanded(
                        child: RadioListTile(
                            activeColor: AppColors.red,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            isThreeLine: false,
                            dense: true,
                            contentPadding: EdgeInsets.all(0),
                            title: Text(
                              "Budtender",
                              style: smallStyle.copyWith(
                                  color: AppColors.white.withOpacity(0.5)),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            value: 2,
                            groupValue: controller.selectedValue.value,
                            onChanged: (val) {
                              controller.selectedValue.value = val!;
                            }),
                      ),
                    ],
                  )),
              Obx(() => Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                            activeColor: AppColors.red,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            dense: true,
                            contentPadding: EdgeInsets.all(0),
                            title: Text(
                              "Dispensary",
                              style: smallStyle.copyWith(
                                  color: AppColors.white.withOpacity(0.5)),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            value: 3,
                            groupValue: controller.selectedValue.value,
                            onChanged: (val) {
                              controller.selectedValue.value = val!;
                            }),
                      ),
                      Expanded(
                        child: RadioListTile(
                            activeColor: AppColors.red,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            dense: true,
                            contentPadding: EdgeInsets.all(0),
                            title: Text(
                              "Medical Cannabis clinics",
                              style: smallStyle.copyWith(
                                  color: AppColors.white.withOpacity(0.5)),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            value: 4,
                            groupValue: controller.selectedValue.value,
                            onChanged: (val) {
                              controller.selectedValue.value = val!;
                            }),
                      ),
                    ],
                  )),
              spacerh(Get.height * 0.02),
              CustomBtn(press: () {}, text: "Log In", btncolor: AppColors.red),
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
                onTap: () {},
                child: Text(
                  "Already have an account?",
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

  Color getColor(Set<MaterialState> states) {
    return Colors.white;
  }
}
