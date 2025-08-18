import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/application/utils/extension/extensions.dart';

class FortuneDetailPage extends StatelessWidget {
  const FortuneDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: ColorConstants.color96),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              20.y,
              // Title
              AppText(
                text: "행운의 \n소환은 곧 실현 가능성으로 \n곧은 길로 사랑과 발견할거에요!",
                fontSize: 20,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
                height: 1.4,
              ),
              32.y,
              // Main card image with teal background
              Container(
                width: double.infinity,
                height: 280,
                decoration: BoxDecoration(
                  color: Color(0xFF00E5CC),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 140,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Color(0xFFE0E0E0)),
                      ),
                      child: Icon(
                        Icons.image,
                        size: 50,
                        color: Color(0xFFBDBDBD),
                      ),
                    ),
                  ],
                ),
              ),
              24.y,
              // Date section with gray background
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: AppText(
                    text: "2024년 01월 오늘의 운세 대해 빌어요!",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              24.y,
              _buildAttributeSection(),
              24.y,
              // Description text
              AppText(
                text: "곧 옆에 힘차고 운명대는 태그가 흔들리게 될 거예요! 내가 찾고 빠르게 살펴니다.",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                height: 1.5,
                textAlign: TextAlign.center,
              ),
              16.y,
              AppText(
                text:
                    "이번 달부터 시작해서 거의한 시도들이 일어 활동 후 흔들려고, 진정으로 먹우간을 감싸나게. 이번달, 맑은 자음들이 담겨 비타기 한것도 위진대도와. 특별할 만들어줄한것들이 담겨 긴급한 정거기가 날개. 거제 자녀들 아니면 있을 오므히고 세정해야겠어.",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorConstants.color96,
                height: 1.6,
                textAlign: TextAlign.center,
              ),
              32.y,
              // Questions section
              AppText(
                text: "오늘의 유의 운세 기분어떠니까?",
                fontSize: 18,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              20.y,
              // Emoji reactions row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildEmojiReaction("💙", "좋아요"),
                  _buildEmojiReaction("📗", "유용해요"),
                  _buildEmojiReaction("😊", "재미있어요"),
                  _buildEmojiReaction("😮", "놀라워요"),
                  _buildEmojiReaction("🤔", "화나요"),
                ],
              ),
              40.y,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAttributeSection() {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          AppText(
            text: "<마음식>",
            fontSize: 18,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
          16.y,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildAttributeItem("창조력"),
              _buildAttributeItem("의지"),
              _buildAttributeItem("능력자"),
              _buildAttributeItem("기술"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAttributeItem(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: AppText(
        text: text,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildEmojiReaction(String emoji, String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Center(child: Text(emoji, style: TextStyle(fontSize: 28))),
          8.y,
          AppText(
            text: label,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: ColorConstants.color96,
          ),
        ],
      ),
    );
  }
}
