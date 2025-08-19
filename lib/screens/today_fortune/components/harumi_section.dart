import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/screens/tarot_play/tarot_landing_page.dart';

class HarumiSection extends StatelessWidget {
  const HarumiSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: '하루미팀',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          SizedBox(height: 8),
          AppText(
            text: '사주 읽어도 볼 수 있는\n오늘의 운세를 모아봤어요',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey[600],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(child: _buildHarumiFunction(title: '오늘의 타로 운세')),
              SizedBox(width: 12),
              Expanded(child: _buildHarumiFunction(title: '이번주 타로 운세')),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _buildHarumiFunction(title: '오늘의 별운 읽기')),
              SizedBox(width: 12),
              Expanded(child: _buildHarumiFunction(title: '오늘의 직업운')),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _buildHarumiFunction(title: '오늘 학교 생활\n어떨까?')),
              SizedBox(width: 12),
              Expanded(child: _buildHarumiFunction(title: '오늘 직장 생활\n어떨까?')),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _buildHarumiFunction(title: '오늘의\n건강한 속성')),
              SizedBox(width: 12),
              Expanded(child: _buildHarumiFunction(title: '오늘의\n고민인 속성')),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _buildHarumiFunction(title: '오늘의 쌓은 카드')),
              SizedBox(width: 12),
              Expanded(child: _buildHarumiFunction(title: '오늘의 쌓은 장소')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHarumiFunction({required String title}) {
    return InkWell(
      onTap: () {
        Get.to(TarotLandingPage());
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFF00E5CC),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(height: 12),
            AppText(
              text: title,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
