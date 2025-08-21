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

class MonthHoroscope extends StatelessWidget {
  final Item item;
  const MonthHoroscope({super.key, required this.item});

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
              16.y,
              HoroscopeCommentSection(),
              16.y,
              HoroscopeNoteSection(),
              16.y,
              HoroscopeRecommendationSection(),
              16.y,
              AppText(
                text:
                    "이번 달에는 내 애정운이 어떨지 확인해봐!\n사주로 애정운을 확인해보고 더 나은 관계를 만들어보세요!",
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
            Get.to(
              () => HoroscopePayment(
                item: Item(
                  title: '6월 사주 애정운',
                  subtitle:
                      '내가 사랑 또는 좋아하는 사람과\n어떤 일이 일어날지 공금하지 않니?\n사주로 어떤 일이 생길지 풀어줄게',
                  price: '400젤리',
                  rating: '4.9',
                  viewCount: '조회수 31만회+',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
