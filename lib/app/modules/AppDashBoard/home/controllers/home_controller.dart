import 'package:canna/app/core/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
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
  //......................................................................
  TextEditingController search = TextEditingController();
  bool isSearch = false;

//................previous search Data........................................................
  List previousimages = [
    R.ASSETS_IMAGES_WEEDNUGGET_PNG,
    R.ASSETS_IMAGES_MARIJUANA_PNG,
    R.ASSETS_IMAGES_WEEDNUGGET_PNG
  ];
  List previousNames = ['Weed Nugget', 'Marijuana Bud', 'Weed Nugget'];
  List previousprice = ['7 pcs', '1 pcs', '7 pcs'];

  List purchasedimages = [
    R.ASSETS_IMAGES_PREROLLRD_PNG,
    R.ASSETS_IMAGES_BLUEDREAM_PNG,
    R.ASSETS_IMAGES_PREROLLRD_PNG
  ];
  List purchasedNames = [
    'Pre Rolled joints',
    'Blue Dream',
    'Pre Rolled joints'
  ];
  List purchasedprice = ['1kg', '250gm', '1kg'];

  //................Product  Data........................................................
  List Productimages = [
    R.ASSETS_IMAGES_SATIVA_PNG,
    R.ASSETS_IMAGES_INFUSEDJUANA_PNG,
    R.ASSETS_IMAGES_SATIVA_PNG
  ];
  List ProductNames = ['Sativa', 'Infused Marijuana', 'Sativa'];
  List Productprice = ['1kg', '1kg', '1kg'];
}
