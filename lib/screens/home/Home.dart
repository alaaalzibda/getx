import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/home/HomeController.dart';
import 'package:getx/utils/Constants.dart';

class Home extends StatelessWidget {
  final HomeController _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        init: _homeController,
        builder: (controller) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${'counter'.tr} ${controller.counter}',
              ),
              ElevatedButton(
                onPressed: controller.increment,
                child: Text('increment'.tr),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(SECOND_SCREEN_ROUTE);
                },
                child: Text('second_screen'.tr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
