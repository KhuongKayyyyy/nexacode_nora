import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';

class MoreFortunePage extends StatelessWidget {
  const MoreFortunePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: AppText(
          text: "운세 보관함",
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 3,
        itemBuilder: (context, index) {
          return _buildFortuneItem();
        },
      ),
    );
  }

  Widget _buildFortuneItem() {
    return InkWell(
      onTap: () => Get.toNamed(RouteName.fortuneDetailPage, id: NavIds.more),
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.image, color: Color(0xFFBDBDBD), size: 24),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: "2025년 6월 15일",
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstants.color96,
                  ),
                  SizedBox(height: 4),
                  AppText(
                    text: "오늘의 타로운세",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8),
                  AppText(
                    text: "<df>",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: ColorConstants.color96,
                  ),
                  SizedBox(height: 4),
                  AppText(
                    text: "창의력과 능력을 발휘하여 원신을 벌어지게될",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  AppText(
                    text: "수가있습니다.",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Color(0xFF00E5CC),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
