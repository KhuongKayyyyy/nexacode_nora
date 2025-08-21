import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/screens/horoscope/components/current_basket_item.dart';

class JellyLandingPage extends StatelessWidget {
  const JellyLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(text: "젤리나라", fontWeight: FontWeight.bold),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CurrentBasketItem(title: "0개 젤리 보유 ", isExpandable: true),
            16.y,
            _buildJellyStoreItem(
              title: "1000개 젤리",
              subtitle: "25,000원",
              buttonText: "구매하기",
              onTap: () {},
            ),
            _buildJellyStoreItem(
              title: "500개 젤리",
              subtitle: "12,500원",
              buttonText: "구매하기",
              onTap: () {},
            ),
            _buildJellyStoreItem(
              title: "1000개 젤리",
              subtitle: "25,000원",
              buttonText: "구매하기",
              onTap: () {},
            ),
            16.y,
          ],
        ),
      ),
    );
  }

  Widget _buildJellyStoreItem({
    required String title,
    required String subtitle,
    required String buttonText,
    required VoidCallback onTap,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          AppPlaceHolder(width: 60, height: 60),
          16.x,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: title,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                4.y,
                AppText(
                  text: subtitle,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[600],
                ),
              ],
            ),
          ),
          AppButton(
            width: 100,
            height: 30,
            text: buttonText,
            onTap: () {
              _showDialog();
            },
          ),
          Divider(color: Colors.grey[300], height: 1, thickness: 1),
        ],
      ),
    );
  }

  void _showDialog() {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText(
                text: "1 젤리를 받았어요!",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              24.y,
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: AppText(
                    text: "확인",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
