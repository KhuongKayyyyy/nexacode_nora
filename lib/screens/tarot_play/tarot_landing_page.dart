import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/data/model/item.dart';
import 'package:nora/screens/tarot_play/components/horoscope_comment_section.dart';
import 'package:nora/screens/tarot_play/components/horoscope_heading.dart';
import 'package:nora/screens/tarot_play/components/horoscope_note_section.dart';
import 'package:nora/screens/tarot_play/components/horoscope_recommendation_section.dart';
import 'package:nora/screens/tarot_play/tarot_play_page.dart';

class TarotLandingPage extends StatelessWidget {
  Item? item;
  TarotLandingPage({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HoroscopeHeading(
                    title: item?.title ?? '오늘의 타로 운세',
                    subtitle: item?.subtitle ?? '오늘의 타로 운세를 알아보자',
                    rating: item?.rating ?? '4.9',
                    viewCount: item?.viewCount ?? '조회수 31만회+',
                    price: item?.price ?? '무료',
                  ),
                  16.y,
                  AppPlaceHolder(width: double.infinity, height: 350),
                  HoroscopeCommentSection(),
                  16.y,
                  HoroscopeNoteSection(),
                  32.y,
                  HoroscopeRecommendationSection(),

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
            padding: EdgeInsets.only(top: 16),
            child: AppButton(
              text: '다음',
              onTap: () {
                Get.to(() => TarotPlayPage());
              },
            ),
          ),
        ),
      ),
    );
  }
}
