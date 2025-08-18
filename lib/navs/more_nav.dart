import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';
import 'package:nora/screens/more/fortune/fortune_detail_page.dart';
import 'package:nora/screens/more/more_coupon_page.dart';
import 'package:nora/screens/more/fee/more_fee_history.dart';
import 'package:nora/screens/more/fee/more_fee_page.dart';
import 'package:nora/screens/more/fortune/more_fortune_page.dart';
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
        if (settings.name == RouteName.moreFeeHistory) {
          return GetPageRoute(settings: settings, page: () => MoreFeeHistory());
        }
        if (settings.name == RouteName.moreCouponPage) {
          return GetPageRoute(settings: settings, page: () => MoreCouponPage());
        }
        if (settings.name == RouteName.moreFortunePage) {
          return GetPageRoute(
            settings: settings,
            page: () => MoreFortunePage(),
          );
        }
        if (settings.name == RouteName.fortuneDetailPage) {
          return GetPageRoute(
            settings: settings,
            page: () => FortuneDetailPage(),
          );
        }
        return GetPageRoute(settings: settings, page: () => MoreLandingPage());
      },
    );
  }
}
