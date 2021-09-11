import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/home/HomeController.dart';
import 'package:getx/screens/seconc_screen/SecondScreenController.dart';

class SecondScreen extends StatelessWidget {
  SecondScreenController controller = Get.put(SecondScreenController());
  // You can eaither put the controller like this or like HomeScreen
  // for both cases Getx will be able to safe the controller

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SecondScreenController>(
      builder: (controller) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text('second_screen'.tr),
              ),
              Text(
                '${'home_counter'.tr} ${Get.find<HomeController>().counter}',
              ),
              ElevatedButton(
                onPressed: controller.incrementHomeCounter,
                child: Text('increment'.tr),
              ),
            ],
          ),
        );
      },
    );
  }
}
