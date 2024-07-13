import 'package:canna/app/modules/AppDashBoard/subscription/controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


class SubscriptionsView extends GetView<SubscriptionsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SubscriptionsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SubscriptionsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}