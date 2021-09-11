import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx/screens/home/HomeController.dart';

class SecondScreenController extends GetxController {
  incrementHomeCounter() {
    Get.find<HomeController>().increment();
    update();
  }
}
