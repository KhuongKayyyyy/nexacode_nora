import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/constants/Constants.dart';
import 'package:nora/application/utils/extension/extensions.dart';

class MoreSendMessage extends StatefulWidget {
  const MoreSendMessage({super.key});

  @override
  State<MoreSendMessage> createState() => _MoreSendMessageState();
}

class _MoreSendMessageState extends State<MoreSendMessage> {
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.y,
            AppText(
              text: "답기고싶은 말을 알려줘!",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            8.y,
            AppText(
              text: "저희 앱에 불편하신 점, 의견을 주세요!\n모든 의견들을 정성껏 읽고 앞으로 개발에 참고할게요!",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ColorConstants.color96,
            ),
            20.y,
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorConstants.colordc, width: 1),
              ),
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: _messageController,
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  hintText: "무엇이든지 써주세요",
                  hintStyle: TextStyle(
                    color: ColorConstants.color96,
                    fontSize: 14,
                  ),
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
            Spacer(),
            AppButton(
              text: "답변하기",
              onTap: () {
                // Handle submit message
              },
              color: Color(0xFF007AFF),
            ),
            20.y,
          ],
        ),
      ),
    );
  }
}
