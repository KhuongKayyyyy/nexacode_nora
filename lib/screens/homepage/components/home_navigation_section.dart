import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';
import 'package:nora/screens/homepage/inbox/inbox_page.dart';
import 'package:nora/screens/jelly/jelly_landing_page.dart';

class HomeNavigationSection extends StatelessWidget {
  const HomeNavigationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavigationItem(
            color: ColorConstants.color08d2d2,
            title: "오늘 운세",
            hasNotification: false,
            onTap: () {},
          ),
          _buildNavigationItem(
            color: ColorConstants.color08d2d2,
            title: "편지함",
            hasNotification: true,
            notificationCount: 1,
            onTap: () {
              Get.to(() => InboxPage());
            },
          ),
          _buildNavigationItem(
            color: ColorConstants.color08d2d2,
            title: "운세 보관함",
            hasNotification: false,
            onTap: () {},
          ),
          _buildNavigationItem(
            color: ColorConstants.color08d2d2,
            title: "젤리나라",
            hasNotification: true,
            notificationCount: 1,
            onTap: () {
              Get.to(() => JellyLandingPage());
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationItem({
    required Color color,
    required String title,
    required bool hasNotification,
    required Function() onTap,
    int? notificationCount,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              if (hasNotification)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: AppText(
                        text: notificationCount?.toString() ?? '',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 8),
          AppText(
            text: title,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
