import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';
import 'package:nora/screens/more/more_fee_page.dart';
import 'package:nora/screens/more/more_landing_page.dart';
import 'package:nora/screens/more/more_notice_setting_pages.dart';
import 'package:nora/screens/more/more_personal_information.dart';

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
        if (settings.name == RouteName.moreFee) {
          return GetPageRoute(settings: settings, page: () => MoreFeePage());
        }
        if (settings.name == RouteName.moreNoticeSetting) {
          return GetPageRoute(
            settings: settings,
            page: () => MoreNoticeSettingPages(),
          );
        }
        if (settings.name == RouteName.morePersonalInformation) {
          return GetPageRoute(
            settings: settings,
            page: () => MorePersonalInformation(),
          );
        }
        return GetPageRoute(settings: settings, page: () => MoreLandingPage());
      },
    );
  }
}
