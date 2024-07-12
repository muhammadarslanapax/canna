import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_picker/languages.dart';

class SignupController extends GetxController {

  // for signup
  final emailContrller = TextEditingController().obs;
  final phoneController = TextEditingController().obs;



  /// for userinfo
    final emailinfoContrller = TextEditingController().obs;
    final userinfoContrller = TextEditingController().obs;
    final passinfoContrller = TextEditingController().obs;
    final cityinfoContrller = TextEditingController().obs;
    final provinceinfoContrller = TextEditingController().obs;

    // for budtender
        final aboutContrller = TextEditingController().obs;
          RxInt licenceValue = 1.obs;






  final conSelect = false.obs;
  Rx<Language> selectedDialogLanguage = Languages.korean.obs;
  RxInt selectedValue = 1.obs;

  List<Language> languageList = [
    Languages.english,
    Languages.french,
    Languages.fulah,
    Languages.panjabi,
    Languages.spanish,
    Languages.urdu,
    Languages.korean,
    Languages.russian,
    Languages.arabic,
  ];
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
}
