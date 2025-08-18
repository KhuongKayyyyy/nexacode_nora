import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/screens/today_fortune/today_fortune.dart';

class TodayFortuneNav extends StatelessWidget {
  const TodayFortuneNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(NavIds.todayFortune),
      onGenerateRoute: (settings) {
        return GetPageRoute(settings: settings, page: () => TodayFortune());
      },
    );
  }
}
