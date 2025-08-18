import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/constants/Constants.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';

class MoreContactDeveloper extends StatelessWidget {
  const MoreContactDeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: Padding(
        padding: screenPadding,
        child: Column(
          children: [
            40.y,
            _buildIconSection(),
            20.y,
            AppText(
              text: "어떤 메세지를 보낼거야?",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            40.y,
            AppButton(
              text: "앱오류 문의하기",
              onTap: () {},
              color: ColorConstants.barTextColor,
            ),
            16.y,
            AppButton(
              text: "결제 관련 문의하기",
              onTap: () {},
              color: ColorConstants.barTextColor,
            ),
            16.y,
            AppButton(
              text: "개발자에게 의견 남기기",
              onTap: () {
                Get.toNamed(RouteName.moreSendMessage, id: NavIds.more);
              },
              color: ColorConstants.barTextColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconSection() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF00E5CC),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
