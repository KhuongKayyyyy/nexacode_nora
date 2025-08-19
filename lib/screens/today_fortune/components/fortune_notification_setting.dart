import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';

class FortuneNotificationSetting extends StatefulWidget {
  const FortuneNotificationSetting({super.key});

  @override
  State<FortuneNotificationSetting> createState() =>
      _FortuneNotificationSettingState();
}

class _FortuneNotificationSettingState
    extends State<FortuneNotificationSetting> {
  bool goodLuckNotification = false;
  bool badLuckNotification = true;
  bool importantDateNotification = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          _buildNotificationItem(
            title: '좋은 기운 알림 받기',
            subtitle: '내 사주에 좋은 기운이 들어오는 순간을 알려드려요',
            isEnabled: goodLuckNotification,
            onChanged: (value) {
              setState(() {
                goodLuckNotification = value;
              });
            },
          ),
          SizedBox(height: 32),
          _buildNotificationItem(
            title: '나쁜 기운 알림 받기',
            subtitle: '조심해야 할 순간을 알려드려요',
            isEnabled: badLuckNotification,
            onChanged: (value) {
              setState(() {
                badLuckNotification = value;
              });
            },
          ),
          SizedBox(height: 32),
          _buildNotificationItem(
            title: '도화살이 높아질 때 알림 받기',
            subtitle: '매력을 높여주는 기운이 들어올 때 알려드려요',
            isEnabled: importantDateNotification,
            onChanged: (value) {
              setState(() {
                importantDateNotification = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem({
    required String title,
    required String subtitle,
    required bool isEnabled,
    required ValueChanged<bool> onChanged,
  }) {
    return Row(
      children: [
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
              SizedBox(height: 4),
              AppText(
                text: subtitle,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600]!,
              ),
            ],
          ),
        ),
        SizedBox(width: 16),
        Switch(
          value: isEnabled,
          onChanged: onChanged,
          activeColor: Colors.white,
          activeTrackColor: Color(0xFF4CAF50),
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: Colors.grey[400],
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ],
    );
  }
}
