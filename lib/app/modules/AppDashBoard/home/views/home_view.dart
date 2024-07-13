import '../controllers/home_controller.dart';

import 'package:canna/app/core/const/resource.dart';
import 'package:canna/app/core/utils/colors.dart';
import 'package:canna/app/core/utils/style.dart';
import 'package:canna/app/core/widget/custom_divider.dart';
import 'package:canna/app/core/widget/customfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(gradient: AppColors.bgGradient),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: GetBuilder<HomeController>(
                init: HomeController(),
                builder: (obj) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    R.ASSETS_IMAGES_HOMELEAVE_PNG,
                                    width: width * 0.18,
                                    //     height: height * 0.2,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width * 0.22,
                              ),
                              PopupMenuButton<int>(
                                color: AppColors.black,
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                                //onSelected: (item) => onSelected(context, item),
                                itemBuilder: (context) => [
                                  PopupMenuItem<int>(
                                    value: 0,
                                    child: Text(
                                      'Profile',
                                      style: TextStyle(color: AppColors.white),
                                    ),
                                  ),
                                  CustomPopupMenuDivider(
                                    color: AppColors.white,
                                  ),
                                  PopupMenuItem<int>(
                                    value: 1,
                                    child: Text('Settings',
                                        style:
                                            TextStyle(color: AppColors.white)),
                                  ),
                                  CustomPopupMenuDivider(
                                    color: AppColors.white,
                                    height: 2,
                                  ),
                                  PopupMenuItem<int>(
                                    value: 2,
                                    child: Text(' Order History',
                                        style:
                                            TextStyle(color: AppColors.white)),
                                  ),
                                  CustomPopupMenuDivider(
                                    color: AppColors.white,
                                    height: 2,
                                  ),
                                  PopupMenuItem<int>(
                                    value: 3,
                                    child: Text(' My Reviews',
                                        style:
                                            TextStyle(color: AppColors.white)),
                                  ),
                                  CustomPopupMenuDivider(
                                    color: AppColors.white,
                                    height: 2,
                                  ),
                                  PopupMenuItem<int>(
                                    value: 4,
                                    child: Text(
                                        'Canada Cannabis Laws and Regulations',
                                        style:
                                            TextStyle(color: AppColors.white)),
                                  ),
                                  CustomPopupMenuDivider(
                                    color: AppColors.white,
                                    height: 2,
                                  ),
                                  PopupMenuItem<int>(
                                    value: 5,
                                    child: Text('FAQs',
                                        style:
                                            TextStyle(color: AppColors.white)),
                                  ),
                                  CustomPopupMenuDivider(
                                    color: AppColors.white,
                                    height: 2,
                                  ),
                                  PopupMenuItem<int>(
                                    value: 6,
                                    child: Text('Language',
                                        style:
                                            TextStyle(color: AppColors.white)),
                                  ),
                                  CustomPopupMenuDivider(
                                    color: AppColors.white,
                                    height: 2,
                                  ),
                                  PopupMenuItem<int>(
                                    value: 7,
                                    child: Text('Help Us Improve',
                                        style:
                                            TextStyle(color: AppColors.white)),
                                  ),
                                  CustomPopupMenuDivider(
                                    color: AppColors.white,
                                    height: 2,
                                  ),
                                  PopupMenuItem<int>(
                                    value: 8,
                                    child: Text('About Us',
                                        style:
                                            TextStyle(color: AppColors.white)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.place,
                                color: AppColors.white,
                              ),
                              Text(
                                'Alberta , Ca',
                                style: TextStyle(color: AppColors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Container(
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(height * 0.02),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: TextField(
                                controller: obj.search,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search,
                                      color: AppColors.black),
                                  hintText: 'Search...',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Container(
                            height: height * 0.2,
                            decoration: BoxDecoration(
                              gradient: AppColors.homebackColor,
                              borderRadius:
                                  BorderRadius.circular(height * 0.02),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Image.asset(
                                    R.ASSETS_IMAGES_FRESHFRUIT_PNG,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.03,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      R.ASSETS_IMAGES_FRESHCANABIS_PNG,
                                      height: height * 0.024,
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      'Get Up To 40% OFF',
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                  ],
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Image.asset(
                                      R.ASSETS_IMAGES_FRESHFRUIT2_PNG,
                                      height: height * 0.16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          //.................................................................see All............................
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' Previously Searched __',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: height * 0.03),
                              ),
                              Text(
                                ' See all',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: height * 0.03),
                              ),
                            ],
                          ),
                          Container(
                            height: height * 0.32,
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: obj.previousimages.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: width * 0.43,
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      border: Border.all(color: AppColors.red),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(18))),
                                  margin: EdgeInsets.all(height * 0.01),
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(height * 0.01),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              obj.previousimages[index]
                                                  .toString(),
                                              height: height * 0.12,
                                            ),
                                            SizedBox(
                                              height: height * 0.016,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  obj.previousNames[index]
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: AppColors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: height * 0.023),
                                                ),
                                                SizedBox(
                                                  width: width * 0.02,
                                                ),
                                                Text(
                                                  '100 mg',
                                                  style: TextStyle(
                                                      color: AppColors.grey,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: height * 0.017),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.008,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  obj.previousprice[index]
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: AppColors.grey,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: height * 0.023),
                                                ),
                                                SizedBox(
                                                  width: width * 0.03,
                                                ),
                                                Text(
                                                  'price',
                                                  style: TextStyle(
                                                      color: AppColors.grey,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: height * 0.023),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 8.0,
                                          right: 8.0,
                                          child: Container(
                                            height: height * 0.07,
                                            decoration: BoxDecoration(
                                                color: AppColors.green,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(18))),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.add,
                                                  color: AppColors.white,
                                                )),
                                          )),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          //.............................................................purchased history...................................................
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' Purchased History __',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: height * 0.03),
                              ),
                              Text(
                                ' See all',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: height * 0.03),
                              ),
                            ],
                          ),
                          Container(
                            height: height * 0.32,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: obj.purchasedimages.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: width * 0.43,
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      border: Border.all(color: AppColors.red),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(18))),
                                  margin: EdgeInsets.all(height * 0.01),
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(height * 0.01),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              obj.previousimages[index]
                                                  .toString(),
                                              height: height * 0.12,
                                            ),
                                            SizedBox(
                                              height: height * 0.016,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  obj.purchasedNames[index]
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: AppColors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: height * 0.023),
                                                ),
                                                SizedBox(
                                                  width: width * 0.02,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.008,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  obj.purchasedprice[index]
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: AppColors.grey,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: height * 0.023),
                                                ),
                                                SizedBox(
                                                  width: width * 0.03,
                                                ),
                                                Text(
                                                  'prices',
                                                  style: TextStyle(
                                                      color: AppColors.grey,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: height * 0.023),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 8.0,
                                          right: 8.0,
                                          child: Container(
                                            height: height * 0.07,
                                            decoration: BoxDecoration(
                                                color: AppColors.green,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(18))),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.add,
                                                  color: AppColors.white,
                                                )),
                                          )),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),

                          //.............................................................Products...................................................
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' Products __',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: height * 0.03),
                              ),
                              Text(
                                ' See all',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: height * 0.03),
                              ),
                            ],
                          ),

                          Container(
                            height: height * 0.15,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                    decoration: BoxDecoration(
                                        color: index % 2 == 0
                                            ? AppColors.red
                                            : AppColors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    width: width * 0.41,
                                    margin: EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          R.ASSETS_IMAGES_DRIEDWEED_PNG,
                                          height: height * 0.1,
                                        ),
                                        Text(
                                          'Dried Weed',
                                          style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: height * 0.023),
                                        ),
                                      ],
                                    ));
                              },
                            ),
                          ),

                          Container(
                            height: height * 0.32,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: obj.Productimages.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: width * 0.43,
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      border: Border.all(color: AppColors.red),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(18))),
                                  margin: EdgeInsets.all(height * 0.01),
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(height * 0.01),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              obj.Productimages[index]
                                                  .toString(),
                                              height: height * 0.12,
                                            ),
                                            SizedBox(
                                              height: height * 0.016,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  obj.ProductNames[index]
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: AppColors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: height * 0.023),
                                                ),
                                                SizedBox(
                                                  width: width * 0.02,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.008,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  obj.Productprice[index]
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: AppColors.grey,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: height * 0.023),
                                                ),
                                                SizedBox(
                                                  width: width * 0.03,
                                                ),
                                                Text(
                                                  'prices',
                                                  style: TextStyle(
                                                      color: AppColors.grey,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: height * 0.023),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 8.0,
                                          right: 8.0,
                                          child: Container(
                                            height: height * 0.07,
                                            decoration: BoxDecoration(
                                                color: AppColors.green,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(18))),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.add,
                                                  color: AppColors.white,
                                                )),
                                          )),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })),
      ),
    );
  }
}
