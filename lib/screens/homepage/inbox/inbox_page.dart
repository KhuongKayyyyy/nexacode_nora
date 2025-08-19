import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/screens/homepage/inbox/write_letter_page.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        centerTitle: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: AppText(text: '편지함', fontSize: 18, fontWeight: FontWeight.w600),
        actions: [
          Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: () {},
                child: Text(
                  '전체',
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
              ),
              Icon(Icons.filter_list, color: Colors.grey[600]),
            ],
          ),
          10.x,
        ],
      ),
      body: ListView(
        children: [
          _buildMessageItem(
            date: '2025년 6월 15일',
            message: '요술은 뭐가 좋았어? 하루미의 행복했던 순간이 궁금...',
          ),
          _buildMessageItem(
            date: '2025년 6월 15일',
            message: '요술은 뭐가 좋았어? 하루미의 행복했던 순간이 궁금...',
          ),
          _buildMessageItem(
            date: '2025년 6월 15일',
            message: '요술은 뭐가 좋았어? 하루미의 행복했던 순간이 궁금...',
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: AppButton(
          text: "편지 보내기",
          onTap: () {
            Get.to(() => WriteLetterPage());
          },
        ),
      ),
    );
  }

  Widget _buildMessageItem({required String date, required String message}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: EdgeInsets.all(16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: date,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.grey[600],
          ),
          8.y,
          AppText(
            text: message,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          10.y,
          Divider(color: Colors.grey[300], height: 1),
        ],
      ),
    );
  }
}
