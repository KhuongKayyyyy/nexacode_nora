import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/application/controllers/home_controller.dart';

import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppBubbleChat.dart';
import 'package:nora/components/AppButtonWithTag.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/constants/AppFont.dart';
import 'package:nora/data/model/item.dart';
import 'package:nora/screens/homepage/components/day_count_item.dart';
import 'package:nora/screens/homepage/components/home_navigation_section.dart';
import 'package:nora/screens/homepage/components/function_secion.dart';
import 'package:nora/screens/horoscope/day_horoscope.dart';
import 'package:nora/screens/horoscope/friendship_horoscope.dart';
import 'package:nora/screens/horoscope/month_horoscope.dart';
import 'package:nora/screens/horoscope/year_horoscope.dart';
import 'package:nora/screens/tarot_play/tarot_landing_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final HomeController _homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppPlaceHolder(width: 100, height: 32, title: "Logo"),
                16.y,
                DayCountItem(title: "하루미님이 ㅁㅁ와 함께한지 ㅁ일 째"),
                32.y,
                AppBubbleChat(
                  backgroundColor: Colors.white,
                  child: AppText(
                    text: "오늘 기분이 하룰라라 갔어~~ ",
                    fontFamily: AppFont.Ownglyph_ryuttung,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Center(child: AppPlaceHolder(width: 160, height: 160)),
                16.y,
                HomeNavigationSection(),
                16.y,
                AppButtonWithTag(
                  item: Item(
                    title: "2025 신년 운세",
                    subtitle: "작년 5만명이 본 신년운세, 업그레이드가 되어 돌아왔다!",
                    price: "2,000젤리",
                    rating: "4.9",
                    viewCount: "조회수 31만회+",
                  ),
                  text: "2025 신년 운세",
                  tagType: TagType.newTag,
                  onTap: () {
                    Get.to(
                      () => YearHoroscope(
                        item: Item(
                          title: "2025 신년 운세",
                          subtitle: "작년 5만명이 본 신년운세, 업그레이드가 되어 돌아왔다!",
                          price: "2,000젤리",
                          rating: "4.9",
                          viewCount: "조회수 31만회+",
                        ),
                      ),
                    );
                  },
                ),
                16.y,
                FunctionSection(
                  title: "오늘의 운세",
                  items: [..._homeController.dailyFortuneItems],
                ),
                16.y,
                FunctionSection(
                  title: "사주로 보는 6월 운세",
                  items: [..._homeController.monthlyFortuneItems],
                ),
                16.y,
                FunctionSection(
                  title: "타로 상담 소원 성취",
                  items: [..._homeController.tarotItems],
                ),
                16.y,
                FunctionSection(
                  title: "타로 상담 궁금하다",
                  items: [
                    ..._homeController.tarotItems,
                    ..._homeController.questionItems,
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "다른 타로 궁금하다",
                  items: [..._homeController.questionItems],
                ),
                16.y,
                FunctionSection(
                  title: "오늘의 운세",
                  items: [..._homeController.todayHoroscopeItems],
                ),
                16.y,
                AppText(
                  text: "진행 중인 이벤트",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                16.y,
                AppButtonWithTag(
                  text: "2025 친구와의 궁합",
                  tagType: TagType.event,
                  item: Item(
                    title: "2025 친구와의 궁합",
                    subtitle: '2025년 친구와의 궁합을 확인해보세요\n새로운 인연과 우정을 알아보세요',
                    price: '2,000젤리',
                    rating: '4.9',
                    viewCount: '조회수 25만회+',
                  ),
                  onTap: () {
                    Get.to(() => FriendshipHoroscope());
                  },
                ),
                16.y,
                FunctionSection(
                  title: "2025 신년운세 무료",
                  items: [
                    ..._homeController.yearlyFortuneItems,
                    ..._homeController.freeItems,
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "신년 택",
                  items: [..._homeController.freeItems],
                ),
                16.y,
                FunctionSection(
                  title: "2025를 보는 나의 손님이",
                  items: [..._homeController.workItems],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
