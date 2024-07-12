import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final conSelect = false.obs;
  final termController = TextEditingController().obs;

  final pageController = PageController().obs;
  var current = 0.obs;

  RxList<OnBoardingModel> onboardingList = RxList<OnBoardingModel>([
    OnBoardingModel("Let Start Your", "GREEN Experience",
        "Understand. Explore. Empower your cannabis journey."),
    OnBoardingModel("Explore Cannabis", "Pick Your GREEN",
        "Helping Canadians with proper information on their cannabis needs"),
    OnBoardingModel("Let Start Your", "GREEN Experience",
        "Helping Canadians with proper information on their cannabis needs"),
  ]);

  // Function to handle button click
  void goToNextPage() {
    if (pageController.value.hasClients) {
      pageController.value.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

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

class OnBoardingModel {
  String? title;
  String? subtitle;
  String? description;

  OnBoardingModel(this.title, this.subtitle, this.description);
}
