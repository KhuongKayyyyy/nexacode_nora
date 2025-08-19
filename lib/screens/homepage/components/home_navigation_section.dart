import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/constants/ColorConstants.dart';

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
          ),
          _buildNavigationItem(
            color: ColorConstants.color08d2d2,
            title: "편지함",
            hasNotification: true,
            notificationCount: 1,
          ),
          _buildNavigationItem(
            color: ColorConstants.color08d2d2,
            title: "운세 보관함",
            hasNotification: false,
          ),
          _buildNavigationItem(
            color: ColorConstants.color08d2d2,
            title: "젤리나라",
            hasNotification: true,
            notificationCount: 1,
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationItem({
    required Color color,
    required String title,
    required bool hasNotification,
    int? notificationCount,
  }) {
    return Column(
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
    );
  }
}
