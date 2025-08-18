import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/constants/Constants.dart';
import 'package:nora/constants/RouteName.dart';
import 'package:nora/constants/NavIds.dart';

class MoreLandingPage extends StatelessWidget {
  const MoreLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: screenPadding,
          child: Column(
            children: [
              _buildHeadingSection(),
              _buildProfileSection(),
              20.y,
              _buildImagePlaceHolder(),
              10.y,
              _buildSettingItem(title: "알림 설정", onTap: () {}),
              _buildSettingItem(title: "운세 보관함", onTap: () {}),
              _buildSettingItem(title: "내 쿠폰", onTap: () {}),
              _buildSettingItem(title: "내 젤리", onTap: () {}),
              _buildSettingItem(title: "젤리 내역", onTap: () {}),
              _buildSettingItem(title: "이름 바꾸기", onTap: () {}),
              _buildSettingItem(title: "약관 보기", onTap: () {}),
              _buildSettingItem(title: "개발자에게 문의하기", onTap: () {}),
              _buildSettingItem(title: "광고 정확도 올리기", onTap: () {}),
              _buildSettingItem(title: "회원 탈퇴하기", onTap: () {}),
              _buildBottomSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: AppText(
          textAlign: TextAlign.center,
          text: "앱버전 : 1.1 ㅣ 번들버전 : 1.11\n최신 버전 앱 사용 중",
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildSettingItem({required String title, required Function() onTap}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Row(
            children: [
              AppText(text: title, fontSize: 16, fontWeight: FontWeight.w500),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: ColorConstants.color96,
                size: 16,
              ),
            ],
          ),
          Divider(color: ColorConstants.color96, height: 1),
        ],
      ),
    );
  }

  Widget _buildProfileSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFF00E5CC),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(width: 12),
          AppText(text: "0 젤리", fontSize: 16, fontWeight: FontWeight.w500),
          Spacer(),
          AppButton(width: 57, height: 33, text: "충전", onTap: () {}),
        ],
      ),
    );
  }

  Widget _buildImagePlaceHolder() {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFF00E5CC),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildHeadingSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: "하루비", fontSize: 24, fontWeight: FontWeight.bold),
        AppText(
          text: "010-1234-5677",
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        Row(
          children: [
            AppText(
              text: "1996년 2월 1일",
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
            Spacer(),
            TextButton(
              onPressed: () => Get.toNamed(RouteName.moreFee, id: NavIds.more),
              child: AppText(
                color: Colors.blue,
                text: "정보 수정",
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
