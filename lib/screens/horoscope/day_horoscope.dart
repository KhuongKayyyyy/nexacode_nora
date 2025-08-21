import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/data/model/item.dart';
import 'package:nora/screens/horoscope/horoscope_payment.dart';
import 'package:nora/screens/tarot_play/components/horoscope_comment_section.dart';
import 'package:nora/screens/tarot_play/components/horoscope_heading.dart';
import 'package:nora/screens/tarot_play/components/horoscope_note_section.dart';
import 'package:nora/screens/tarot_play/components/horoscope_recommendation_section.dart';

class DayHoroscope extends StatelessWidget {
  final Item item;
  const DayHoroscope({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      child: SafeArea(
        child: Scaffold(
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
                  16.y,
                  HoroscopeCommentSection(),
                  16.y,
                  HoroscopeNoteSection(),
                  16.y,
                  HoroscopeRecommendationSection(),
                  16.y,
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
            padding: EdgeInsets.only(top: 16),
            child: AppButton(
              text: '다음',
              onTap: () {
                Get.to(
                  () => HoroscopePayment(
                    item: Item(
                      title: '오늘 짝사랑 속마음',
                      subtitle:
                          '그 사람의 속마음이 어떨지 궁금하신가요?\n오늘의 그 사람의 마음을 타로로 알아보세요',
                      price: '120젤리',
                      rating: '4.9',
                      viewCount: '조회수 31만회+',
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
