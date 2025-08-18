import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/application/controllers/base_controller.dart';
import 'package:nora/components/AppBottomNavigation.dart';
import 'package:nora/navs/home_nav.dart';
import 'package:nora/navs/today_fortune_nav.dart';
import 'package:nora/screens/homepage/homepage.dart';
import 'package:nora/screens/today_fortune/today_fortune.dart';
import 'package:nora/navs/diary_nav.dart';
import 'package:nora/navs/more_nav.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: BaseController.to.currentIndex,
          children: [HomeNav(), TodayFortuneNav(), DiaryNav(), MoreNav()],
        ),
      ),
      bottomNavigationBar: AppBottomNavigation(
        items: [
          AppBottomNavigationItem(icon: Icons.square, label: '홈'),
          AppBottomNavigationItem(icon: Icons.square, label: '오늘운세'),
          AppBottomNavigationItem(icon: Icons.square, label: '일기장'),
          AppBottomNavigationItem(icon: Icons.square, label: '더보기'),
        ],
      ),
    );
  }
}
