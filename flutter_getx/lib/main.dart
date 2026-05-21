import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './app/modules/home/controllers/nav_controller.dart';
import 'app/modules/home/routes/app_pages.dart';
import 'app/modules/home/routes/app_routes.dart';

void main() {

  Get.put(NavController(), permanent: true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
    );
  }
}
