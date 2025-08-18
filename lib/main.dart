import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/application/controllers/base_controller.dart';
import 'package:nora/screens/base/base_screen.dart';

void main() {
  Get.put<BaseController>(BaseController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nora',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const BaseScreen(),
    );
  }
}
