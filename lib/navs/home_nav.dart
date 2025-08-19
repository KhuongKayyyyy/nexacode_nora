import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';
import 'package:nora/screens/homepage/home_detail_page.dart';
import 'package:nora/screens/homepage/homepage.dart';

class HomeNav extends StatelessWidget {
  const HomeNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(NavIds.home),
      onGenerateRoute: (settings) {
        if (settings.name == RouteName.homeDetail) {
          return GetPageRoute(settings: settings, page: () => HomeDetailPage());
        }
        if (settings.name == RouteName.home) {
          return GetPageRoute(settings: settings, page: () => Homepage());
        }
        return GetPageRoute(settings: settings, page: () => Homepage());
      },
    );
  }
}
