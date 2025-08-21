import 'package:flutter/material.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppText.dart';

class HoroscopeCommentSection extends StatelessWidget {
  const HoroscopeCommentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        16.y,
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            children: [
              TextSpan(text: "운세를 본 "),
              TextSpan(
                text: "99,999",
                style: TextStyle(color: Colors.blue),
              ),
              TextSpan(text: "명의 후기"),
            ],
          ),
        ),
        16.y,
        _buildCommentItem(),
        _buildCommentItem(),
      ],
    );
  }

  Widget _buildCommentItem() {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.favorite, color: Color(0xFF00E5CC), size: 20),
              SizedBox(width: 8),
              AppText(
                text: '고마워',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              Spacer(),
              AppText(
                text: '연*',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600],
              ),
            ],
          ),
          SizedBox(height: 12),
          AppText(
            text:
                '지금 운세를 확인 했지만 오늘의 운세가 맞는거 같더라 오늘 실짝 기분이 있었는데 친구들이 내 옆에 있어주니 텐션이 높아진거 같기도ㅋㅋ 고마워!',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.4,
          ),
        ],
      ),
    );
  }
}
