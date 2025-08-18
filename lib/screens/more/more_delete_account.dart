import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/constants/Constants.dart';
import 'package:nora/application/utils/extension/extensions.dart';

class MoreDeleteAccount extends StatelessWidget {
  const MoreDeleteAccount({super.key});

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
            Spacer(),
            _buildIconSection(),
            20.y,
            AppText(
              text: "정말 탈퇴하시나요?",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            10.y,
            AppText(
              text: "계정삭제시 계정의 모든 데이터가 삭제되고,\n복구 되지 않아요",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ColorConstants.color96,
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    text: "취소",
                    onTap: () => Navigator.pop(context),
                    color: Colors.grey[300]!,
                    textColor: Colors.black,
                  ),
                ),
                16.x,
                Expanded(
                  child: AppButton(
                    text: "탈퇴",
                    onTap: () {
                      // Handle account deletion
                    },
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            20.y,
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
