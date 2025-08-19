import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppBigTextField.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/screens/homepage/inbox/sent_letter_page.dart';

class WriteLetterPage extends StatefulWidget {
  const WriteLetterPage({super.key});

  @override
  State<WriteLetterPage> createState() => _WriteLetterPageState();
}

class _WriteLetterPageState extends State<WriteLetterPage> {
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Square avatar placeholder
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xFF7FDBDB), // Light cyan color from the image
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            24.y,
            // Title text
            AppText(
              text: '내게 편지를 써줘야 감동이야',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            32.y,
            // Text input field
            Expanded(
              child: AppBigTextField(
                controller: _textController,
                hintText: '편지를 입력해주세요...',
              ),
            ),
            24.y,
            // Send button
            AppButton(
              text: "편지 보내기",
              onTap: () {
                Get.to(() => SentLetterPage());
              },
            ),
            30.y, // Bottom padding
          ],
        ),
      ),
    );
  }
}
