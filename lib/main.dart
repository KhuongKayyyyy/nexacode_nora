import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/application/controllers/base_controller.dart';
import 'package:nora/application/controllers/landing_page_controller.dart';
import 'package:nora/constants/AppTheme.dart';
import 'package:nora/screens/landing_pages/landing_page.dart';

void main() {
  Get.put<BaseController>(BaseController());
  Get.put<LandingPageController>(LandingPageController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nora',
      theme: AppTheme.theme,
      home: const LandingPage(),
    );
  }
}
