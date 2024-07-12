import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_picker/languages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final emailContrller = TextEditingController().obs;
  final passwordContrller = TextEditingController().obs;
  final conSelect = false.obs;
  Rx<Language> selectedDialogLanguage = Languages.korean.obs;

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
}
