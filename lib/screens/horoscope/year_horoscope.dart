import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/data/model/item.dart';
import 'package:nora/screens/horoscope/year_horoscope_select.dart';
import 'package:nora/screens/tarot_play/components/horoscope_comment_section.dart';
import 'package:nora/screens/tarot_play/components/horoscope_heading.dart';
import 'package:nora/screens/tarot_play/components/horoscope_recommendation_section.dart';

class YearHoroscope extends StatelessWidget {
  final Item item;
  const YearHoroscope({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              HoroscopeHeading(
                title: item.title,
                subtitle: item.subtitle,
                rating: item.rating,
                viewCount: item.viewCount,
                price: item.price,
              ),
              16.y,
              AppPlaceHolder(width: double.infinity, height: 350),
              HoroscopeCommentSection(),
              16.y,
              AppPlaceHolder(width: double.infinity, height: 1000),
              16.y,
              HoroscopeRecommendationSection(),

              16.y,
              AppText(
                textAlign: TextAlign.center,
                text: "다가오는 2025\n언제 운이 들어오는지\n더 자세히 확인해보세요",
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
        padding: EdgeInsets.only(bottom: 32, top: 16),
        child: AppButton(
          text: '다음',
          onTap: () {
            Get.to(() => YearHoroscopeSelect());
          },
        ),
      ),
    );
  }
}
