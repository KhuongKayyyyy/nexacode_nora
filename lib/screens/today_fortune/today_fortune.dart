import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppBubbleChat.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/AppTextField.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/constants/AppFont.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';
import 'package:nora/screens/today_fortune/today_fortune_result.dart';

class TodayFortune extends StatefulWidget {
  const TodayFortune({super.key});

  @override
  State<TodayFortune> createState() => _TodayFortuneState();
}

class _TodayFortuneState extends State<TodayFortune> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    switch (currentStep) {
      case 0:
        return _buildLandingStep();
      case 1:
        return _buildGenderSelectStep();
      case 2:
        return _buildBirthdaySelectStep();
      case 3:
        return _buildBirthTimeSelectStep();
      case 4:
        return _buildConfirmationStep();
      case 5:
        // Start timer when entering waiting step
        Future.delayed(Duration(seconds: 2), () {
          Get.to(() => TodayFortuneResult());
        });
        return _buildWaitingStep();
      default:
        return _buildLandingStep();
    }
  }

  Widget _buildLandingStep() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          100.y,
          AppPlaceHolder(width: 100, height: 28, title: "Logo"),
          Spacer(),
          Center(child: AppPlaceHolder(width: 120, height: 120)),
          48.y,
          AppBubbleChat(
            isReversed: true,
            child: Column(
              children: [
                AppText(
                  text: "하루미\n사주풀이를 위해서는\n몇가지 답변이 필요해!",
                  fontSize: 28,
                  fontFamily: AppFont.Ownglyph_ryuttung,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  textAlign: TextAlign.center,
                ),
                16.y,
                AppButton(
                  text: "답변할게",
                  onTap: () {
                    setState(() {
                      currentStep = 1;
                    });
                  },
                ),
              ],
            ),
          ),
          Spacer(),

          AppButton(
            text: "뒤로가기",
            onTap: () {
              Get.toNamed(
                RouteName.todayFortuneAfterBdConfirm,
                id: NavIds.todayFortune,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildGenderSelectStep() {
    return Column(
      children: [
        100.y,
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color(0xFF00E5CC),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        16.y,
        AppText(
          text: "성별이 뭐야?",
          fontSize: 28,
          fontFamily: AppFont.Ownglyph_ryuttung,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          textAlign: TextAlign.center,
        ),
        32.y,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Expanded(
                child: AppButton(
                  text: "남성",
                  onTap: () {
                    setState(() {
                      currentStep = 2;
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: AppButton(
                  text: "여성",
                  onTap: () {
                    setState(() {
                      currentStep = 2;
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }

  Widget _buildBirthdaySelectStep() {
    return Column(
      children: [
        100.y,
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color(0xFF00E5CC),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        16.y,
        AppText(
          text: "생일은 언제야?",
          fontSize: 28,
          fontFamily: AppFont.Ownglyph_ryuttung,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          textAlign: TextAlign.center,
        ),
        16.y,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => _showCalendarTypeBottomSheet(),
                child: Container(
                  width: 80,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(text: "양력", fontSize: 16),
                      SizedBox(width: 4),
                      Icon(Icons.keyboard_arrow_down, color: Colors.grey[600]),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: AppTextField(
                    hintText: "EX : 000101",
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
        32.y,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: AppButton(
            text: "다음",
            onTap: () {
              setState(() {
                currentStep = 3;
              });
            },
            color: Color(0xFF94A3B8),
          ),
        ),
        Spacer(),
      ],
    );
  }

  void _showCalendarTypeBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            SizedBox(height: 20),
            _buildBottomSheetItem("양력", true),
            _buildBottomSheetItem("양력 (월력)", false),
            _buildBottomSheetItem("음력", false),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSheetItem(String title, bool isSelected) {
    return InkWell(
      onTap: () {
        Get.back();
        // Handle selection
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: AppText(
          text: title,
          fontSize: 16,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildBirthTimeSelectStep() {
    return Column(
      children: [
        100.y,
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Color(0xFF00E5CC),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        16.y,
        AppText(
          text: "태어난 시간을 알려줘!",
          fontSize: 28,
          fontFamily: AppFont.Ownglyph_ryuttung,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          textAlign: TextAlign.center,
        ),
        16.y,
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => _showHourBottomSheet(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(text: "0", fontSize: 16),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey[600],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              AppText(text: "시", fontSize: 16),
              SizedBox(width: 16),
              Expanded(
                child: InkWell(
                  onTap: () => _showMinuteBottomSheet(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(text: "0", fontSize: 16),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey[600],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              AppText(text: "분", fontSize: 16),
            ],
          ),
        ),
        16.y,
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
                activeColor: Color(0xFF00E5CC),
              ),
              AppText(
                text: "태어난 시간을 알아",
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: AppFont.Ownglyph_ryuttung,
              ),
            ],
          ),
        ),
        16.y,
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          child: AppButton(
            text: "다음",
            onTap: () {
              setState(() {
                currentStep = 4;
              });
            },
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }

  void _showHourBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              SizedBox(height: 20),
              for (int i = 0; i <= 23; i++) _buildBottomSheetItem("$i", i == 0),
            ],
          ),
        ),
      ),
    );
  }

  void _showMinuteBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              SizedBox(height: 20),
              for (int i = 0; i <= 59; i += 5)
                _buildBottomSheetItem("$i", i == 0),
            ],
          ),
        ),
      ),
    );
  }

  void _showUnknownTimeBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            SizedBox(height: 20),
            _buildBottomSheetItem("모르겠어", true),
            _buildBottomSheetItem("오전", false),
            _buildBottomSheetItem("오후", false),
          ],
        ),
      ),
    );
  }

  Widget _buildConfirmationStep() {
    return Column(
      children: [
        Spacer(),
        Center(child: AppPlaceHolder(width: 120, height: 120)),
        16.y,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: AppBubbleChat(
            isReversed: true,
            child: Column(
              children: [
                AppText(
                  text: "남자\n1996년 2월 1일에\n태어난게 맞을까?",
                  fontSize: 28,
                  fontFamily: AppFont.Ownglyph_ryuttung,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32),
                AppButton(
                  text: "맞아!",
                  onTap: () {
                    setState(() {
                      currentStep = 5;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }

  Widget _buildWaitingStep() {
    return Column(
      children: [
        Spacer(),
        Center(child: AppPlaceHolder(width: 120, height: 120)),
        16.y,
        AppBubbleChat(
          isReversed: true,
          child: AppText(
            text: "잠시만\n기다려줘~",
            fontSize: 28,
            fontFamily: AppFont.Ownglyph_ryuttung,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
