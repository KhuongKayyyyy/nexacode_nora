import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';
import 'package:nora/screens/more/more_landing_page.dart';

class MoreNav extends StatelessWidget {
  const MoreNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(NavIds.more),
      onGenerateRoute: (settings) {
        if (settings.name == RouteName.more) {
          return GetPageRoute(
            settings: settings,
            page: () => MoreLandingPage(),
          );
        }
        return GetPageRoute(settings: settings, page: () => MoreLandingPage());
      },
    );
  }
}
