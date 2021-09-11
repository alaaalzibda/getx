import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/language/translation.dart';
import 'package:getx/screens/seconc_screen/SecondScreen.dart';

import 'screens/home/Home.dart';
import 'utils/Constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('en'),
      translations: Translation(),
      debugShowCheckedModeBanner: false,
      initialRoute: HOME_ROUTE,
      getPages: [
        GetPage(name: HOME_ROUTE, page: () => Home()),
        GetPage(name: SECOND_SCREEN_ROUTE, page: () => SecondScreen()),
      ],
    );
  }
}
