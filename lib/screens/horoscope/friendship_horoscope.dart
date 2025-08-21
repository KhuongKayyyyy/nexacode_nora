import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/constants/ColorConstants.dart';

class FriendshipHoroscope extends StatefulWidget {
  const FriendshipHoroscope({super.key});

  @override
  State<FriendshipHoroscope> createState() => _FriendshipHoroscopeState();
}

class _FriendshipHoroscopeState extends State<FriendshipHoroscope> {
  int currentStep = 0;
  bool showBottomSheet = false;
  bool showHarumiSelected = false;

  @override
  void initState() {
    super.initState();
    _startSequence();
  }

  void _startSequence() async {
    // Show placeholders for 8 times
    for (int i = 0; i < 8; i++) {
      await Future.delayed(Duration(milliseconds: 500));
      if (mounted) {
        setState(() {
          currentStep = i + 1;
        });
      }
    }

    // Wait a bit then show events
    await Future.delayed(Duration(milliseconds: 500));
    if (mounted) {
      setState(() {
        currentStep = 9; // Start showing events
      });
    }

    // Show bottom sheet
    await Future.delayed(Duration(milliseconds: 2000));
    if (mounted) {
      setState(() {
        showBottomSheet = true;
      });
      _showBottomSheet();
    }
  }

  void _goToNextStep() {
    if (currentStep >= 9 && !showHarumiSelected) {
      _showBottomSheet();
    } else if (showHarumiSelected) {
      // Handle next step from harumi selected state
      // Add your navigation logic here
    }
  }

  @override
  Widget build(BuildContext context) {
    if (showHarumiSelected) {
      return Scaffold(
        appBar: AppBar(leading: AppPlaceHolder(width: 10, height: 10)),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: SingleChildScrollView(child: _buildHarumiSeleted()),
              ),
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 32,
            top: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: "의견 보내기",
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              16.x,
              AppPlaceHolder(width: 10, height: 10),
            ],
          ),
        ),
      );
    }

    if (currentStep >= 9) {
      return Scaffold(
        appBar: AppBar(leading: AppPlaceHolder(width: 10, height: 10)),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [_newYearEvent(), 100.y]),
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 32,
            top: 16,
          ),
          child: AppButton(text: "다음", onTap: _goToNextStep),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(leading: AppPlaceHolder(width: 10, height: 10)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (currentStep >= 1)
                AppPlaceHolder(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  title: "Placeholder ${currentStep}",
                ),
            ],
          ),
        ),
      ),
      bottomSheet: showHarumiSelected
          ? Row(
              children: [
                AppText(
                  text: "의견 보내기",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                16.x,
                AppPlaceHolder(width: 10, height: 10),
              ],
            )
          : Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 32,
                top: 16,
              ),
              child: AppButton(text: "다음", onTap: _goToNextStep),
            ),
    );
  }

  Widget _buildHarumiSeleted() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorConstants.white,
          ),
        ),
        16.y,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(text: "하루미", fontSize: 16, fontWeight: FontWeight.w600),
            16.x,
            AppPlaceHolder(width: 10, height: 10),
          ],
        ),
        AppText(text: "그룹원 1명", fontSize: 16, fontWeight: FontWeight.w600),
        16.y,
        _buildHarumiSeletedItem(),
        16.y,
        _buildCustomButton(),
        100.y,
      ],
    );
  }

  Widget _buildCustomButton() {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: ColorConstants.btnDefaultColor,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: AppText(
                text: "친구 초대하기",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFF00E676),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHarumiSeletedItem() {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorConstants.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(text: "하루미", fontSize: 16, fontWeight: FontWeight.w600),
          AppText(
            text: "1996년 2월 1일 무진일주 남자",
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: ColorConstants.hintTextColor,
          ),
        ],
      ),
    );
  }

  void _showBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox.shrink(),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: ColorConstants.color08d2d2,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Icon(
                      Icons.close,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            32.y,
            AppButton(
              text: "톡이서 궁합보기",
              onTap: () {
                Get.back();
                setState(() {
                  showHarumiSelected = true;
                });
              },
            ),
            16.y,
            AppButton(
              text: "단체로 궁합보기",
              onTap: () {
                Get.back();
                setState(() {
                  showHarumiSelected = true;
                });
              },
            ),
            32.y,
            Container(
              width: 134,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
            16.y,
          ],
        ),
      ),
    );
  }

  Widget _newYearEvent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppText(text: "2025 친구 궁합", fontWeight: FontWeight.bold, fontSize: 28),
        16.y,
        AppText(text: "새해 맞이 이벤트", fontSize: 24, fontWeight: FontWeight.w600),
        16.y,
        AppPlaceHolder(
          width: double.infinity,
          height: 350,
          title: "텍스트 + 그래픽 영역",
        ),
        16.y,
        _buildEvenItem(title: "DM, 카카오톡 으로 보낸 링크로", index: "1"),
        16.y,
        _buildEvenItem(title: "친구가 확인 하면", index: "2"),
        16.y,
        _buildEvenItem(title: "나와 친구의 관계도를 포함해 디테일한 궁합을 볼 수 있어요!", index: "3"),
      ],
    );
  }

  Widget _buildEvenItem({required String title, required String index}) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: ColorConstants.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: AppText(text: index)),
        ),
        16.x,
        Expanded(child: AppText(text: title, fontSize: 14)),
      ],
    );
  }
}
