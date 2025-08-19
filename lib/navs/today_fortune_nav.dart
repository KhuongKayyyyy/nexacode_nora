import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';
import 'package:nora/screens/today_fortune/today_fortune.dart';
import 'package:nora/screens/today_fortune/today_fortune_result.dart';

class TodayFortuneNav extends StatelessWidget {
  const TodayFortuneNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(NavIds.todayFortune),
      onGenerateRoute: (settings) {
        if (settings.name == RouteName.todayFortuneResult) {
          return GetPageRoute(
            settings: settings,
            page: () => TodayFortuneResult(),
            fullscreenDialog: true,
          );
        }
        if (settings.name == RouteName.todayFortune) {
          return GetPageRoute(
            settings: settings,
            page: () => TodayFortune(),
            fullscreenDialog: true,
          );
        }
        return GetPageRoute(settings: settings, page: () => TodayFortune());
      },
    );
  }
}
