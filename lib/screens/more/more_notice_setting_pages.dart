import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';

class MoreNoticeSettingPages extends StatefulWidget {
  const MoreNoticeSettingPages({super.key});

  @override
  State<MoreNoticeSettingPages> createState() => _MoreNoticeSettingPagesState();
}

class _MoreNoticeSettingPagesState extends State<MoreNoticeSettingPages> {
  bool _dailyFortuneNotice = true;
  bool _secondNotice = false;
  bool _thirdNotice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          text: "알림 설정",
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          _buildNoticeItem(
            title: "하루 운세 알림",
            isSelected: _dailyFortuneNotice,
            description: "매일 오시 오마가 쏜 편지가 도착해요",
            onTap: () {
              setState(() {
                _dailyFortuneNotice = !_dailyFortuneNotice;
              });
            },
          ),

          _buildNoticeItem(
            title: "하루 운세 알림",
            isSelected: _secondNotice,
            description: "매일 오시 오마가 쏜 편지가 도착해요",
            onTap: () {
              setState(() {
                _secondNotice = !_secondNotice;
              });
            },
          ),
          _buildNoticeItem(
            title: "하루 운세 알림",
            isSelected: _thirdNotice,
            onTap: () {
              setState(() {
                _thirdNotice = !_thirdNotice;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNoticeItem({
    String title = "하루 운세 알림",
    bool isSelected = false,
    String description = "매일 오시 오마가 쏜 편지가 도착해요",
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(text: title, fontSize: 16, fontWeight: FontWeight.w600),
                SizedBox(height: 4),
                AppText(
                  text: description,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            Spacer(),
            Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                color: isSelected ? Color(0xFF00E5CC) : Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(15),
              ),
              child: AnimatedAlign(
                duration: Duration(milliseconds: 200),
                alignment: isSelected
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Container(
                  width: 26,
                  height: 26,
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
