import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';

class HoroscopeHeading extends StatelessWidget {
  final String title;
  final String subtitle;
  final String rating;
  final String viewCount;
  final String price;

  const HoroscopeHeading({
    super.key,
    this.title = '오늘의 타로 운세',
    this.subtitle = '오늘의 타로 운세를 알아보자',
    this.rating = '4.9',
    this.viewCount = '조회수 31만회+',
    this.price = '무료',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            text: title,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          AppText(
            text: subtitle,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.grey[600],
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: rating,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                textAlign: TextAlign.center,
              ),
              SizedBox(width: 8),
              AppText(
                text: viewCount,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600],
                textAlign: TextAlign.center,
              ),
              SizedBox(width: 8),
              AppText(
                text: price,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600],
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
