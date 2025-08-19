import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';
import 'package:nora/screens/diary/diaray_landing_page.dart';
import 'package:nora/screens/diary/write_diary_page.dart';

class DiaryNav extends StatelessWidget {
  const DiaryNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(NavIds.diary),
      onGenerateRoute: (settings) {
        if (settings.name == RouteName.diaryLandingPage) {
          return GetPageRoute(
            settings: settings,
            page: () => DiarayLandingPage(),
          );
        } else if (settings.name == RouteName.writeDiaryPage) {
          return GetPageRoute(
            settings: settings,
            page: () =>
                WriteDiaryPage(selectedDay: settings.arguments as DateTime),
          );
        }
        return GetPageRoute(
          settings: settings,
          page: () => DiarayLandingPage(),
        );
      },
    );
  }
}
