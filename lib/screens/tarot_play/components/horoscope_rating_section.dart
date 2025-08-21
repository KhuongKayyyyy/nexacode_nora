import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';

class HoroscopeRatingSection extends StatelessWidget {
  const HoroscopeRatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: "오늘의 운세 어땠나요?",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        SizedBox(height: 12),
        AppText(
          text: "64,443명이 추천했어요",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.grey[600],
        ),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: _buildRatingOption('💙', '고마워')),
            SizedBox(width: 8),
            Expanded(child: _buildRatingOption('💵', '힘냈다')),
            SizedBox(width: 8),
            Expanded(child: _buildRatingOption('🍀', '좋기워')),
            SizedBox(width: 8),
            Expanded(child: _buildRatingOption('😊', '재밌어')),
            SizedBox(width: 8),
            Expanded(child: _buildRatingOption('😐', '아쉬워')),
          ],
        ),
      ],
    );
  }

  Widget _buildRatingOption(String emoji, String text) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(text: emoji, fontSize: 24),
                SizedBox(height: 8),
                AppText(
                  text: text,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
