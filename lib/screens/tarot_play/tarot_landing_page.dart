import 'package:flutter/material.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/constants/ColorConstants.dart';

class TarotLandingPage extends StatelessWidget {
  const TarotLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeadingSection(),
              16.y,
              AppPlaceHolder(width: double.infinity, height: 350),
              _buildCommentSection(),
              16.y,
              _buildNoteSection(),
              32.y,
              _buildRecommendSection(),

              48.y,
              AppText(
                textAlign: TextAlign.center,
                text: "하루에 딱 한 번,오늘의 타로 운세 카드를 뽑아보세요!",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: ColorConstants.btnDefaultColor,
              ),
              100.y,
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.only(bottom: 32),
        child: AppButton(text: '다음', onTap: () {}),
      ),
    );
  }

  Widget _buildRecommendSection() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: '22,344명이 추천했어요!',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          SizedBox(height: 8),
          AppText(
            text: "'고마워 💙'를 가장 많이 받았어요!",
            fontSize: 14,
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

  Widget _buildNoteSection() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: '데일리타로 | 오늘의 운세 | 타로점 | 일일운세',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey[600],
          ),
          SizedBox(height: 16),
          AppText(
            text: '이런 사람에게 도움돼요',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          SizedBox(height: 12),
          _buildNoteItem('1. 오늘 하루를 어떻게 보내야 할지 고민되는 사람'),
          _buildNoteItem('2. 일상의 영감을 얻고싶은 사람'),
          _buildNoteItem('3. 타로 카드 메세지가 궁금한 사람'),
          _buildNoteItem('4. 매일매일 새로운 운세를 받고싶은 사람'),
          SizedBox(height: 16),
          AppText(
            text:
                '당신을 위한 오늘의 타로 카드 메세지는 무엇일까요?\n매 순간이 소중한 당신, 매일 아침 타로 카드와 함께\n오늘의 운세를 확인해보는 건 어떨까요?',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
          SizedBox(height: 16),
          AppText(
            text: '지금 바로 하단 다음을 클릭 해보세요!',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget _buildNoteItem(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4),
      child: AppText(
        text: text,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }

  Widget _buildCommentSection() {
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

  Widget _buildHeadingSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(
          text: '오늘의 타로 운세',
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        AppText(
          text: '오늘의 타로 운세를 알아보자',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.grey[600],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              text: '4.9',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            SizedBox(width: 8),
            AppText(
              text: '조회수 31만회+',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey[600],
            ),
            SizedBox(width: 8),
            AppText(
              text: '무료',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey[600],
            ),
          ],
        ),
      ],
    );
  }
}
