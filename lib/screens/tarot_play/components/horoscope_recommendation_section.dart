import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';

class HoroscopeRecommendationSection extends StatelessWidget {
  const HoroscopeRecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: '22,344명이 추천했어요!',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          SizedBox(height: 8),
          AppText(
            text: "'고마워 💙'를 가장 많이 받았어요!",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.grey[600],
          ),
          SizedBox(height: 24),
          _buildProgressBar('💙', Colors.blue, 0.9),
          SizedBox(height: 12),
          _buildProgressBar('💵', Colors.purple, 0.6),
          SizedBox(height: 12),
          _buildProgressBar('🍀', Colors.green, 0.4),
          SizedBox(height: 12),
          _buildProgressBar('🤗', Colors.orange, 0.25),
          SizedBox(height: 12),
          _buildProgressBar('🙂', Colors.grey, 0.1),
        ],
      ),
    );
  }

  Widget _buildProgressBar(String emoji, Color color, double progress) {
    return Row(
      children: [
        AppText(text: emoji, fontSize: 16),
        SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 8,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(4),
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: progress,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
