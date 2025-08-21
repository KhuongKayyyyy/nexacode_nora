import 'package:flutter/material.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/screens/today_fortune/components/calendar_section.dart';
import 'package:nora/screens/today_fortune/components/fortune_notification_setting.dart';
import 'package:nora/screens/today_fortune/components/harumi_heading_section.dart';
import 'package:nora/screens/today_fortune/components/harumi_section.dart';
import 'package:nora/screens/today_fortune/components/today_luck_brief.dart';

class TodayFortuneAfterBdConfirm extends StatelessWidget {
  const TodayFortuneAfterBdConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kToolbarHeight.y,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: AppPlaceHolder(width: 100, height: 32, title: "Logo"),
            ),
            HarumiHeadingSection(),
            TodayLuckBrief(
              date: '6월 13일 계축일',
              luck: '오늘의 운세점수 45점',
              message: '하루미, 뭔가 놓친 것이 있을지 몰라. 꼼꼼히 체크해보자.',
            ),
            FortuneNotificationSetting(),
            CalendarSection(),
            HarumiSection(),
            20.y,
          ],
        ),
      ),
    );
  }
}
