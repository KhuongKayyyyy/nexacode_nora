import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/application/controllers/more_personal_information.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/constants/ColorConstants.dart';

class MorePersonalInformation
    extends GetView<MorePersonalInformationController> {
  const MorePersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the controller before using it
    Get.put(MorePersonalInformationController());

    return Scaffold(
      appBar: AppBar(),
      body: Obx(() {
        switch (controller.currentStep.value) {
          case 1:
            return _buildStep1();
          case 2:
            return _buildStep2();
          case 3:
            return _buildStep3();
          case 4:
            return _buildStep4();
          default:
            return _buildStep1();
        }
      }),
    );
  }

  Widget _buildStep4() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            40.y,
            _buildImageHolder(),
            40.y,
            AppText(
              text: "태어난 시간을 알려줘!",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            40.y,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildTimeSelector("0", true),
                      AppText(
                        text: "시",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      _buildTimeSelector("0", false),
                      AppText(
                        text: "분",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  20.y,
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      AppText(
                        text: "태어난 시간을 몰라",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorConstants.blac,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            AppButton(
              text: "완료",
              onTap: () {
                Get.back();
              },
              textColor: ColorConstants.white,
            ),
            20.y,
          ],
        ),
      ),
    );
  }

  Widget _buildTimeSelector(String value, bool isHour) {
    return Container(
      width: 60,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: ColorConstants.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: ColorConstants.colordc),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(text: value, fontSize: 16, fontWeight: FontWeight.w500),
          Icon(
            Icons.keyboard_arrow_down,
            color: ColorConstants.color96,
            size: 16,
          ),
        ],
      ),
    );
  }

  Widget _buildStep3() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            40.y,
            _buildImageHolder(),
            40.y,
            AppText(
              text: "생일은 언제야?",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            40.y,
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: ColorConstants.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: ColorConstants.colordc),
                  ),
                  child: Row(
                    children: [
                      AppText(
                        text: "남자",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      8.x,
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: ColorConstants.color96,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                20.x,
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: ColorConstants.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: ColorConstants.colordc),
                    ),
                    child: AppText(
                      text: "960201",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            AppButton(
              width: double.infinity,
              height: 50,
              text: "다음",
              onTap: () {
                controller.nextStep();
              },
            ),
            20.y,
          ],
        ),
      ),
    );
  }

  Widget _buildStep2() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            40.y,
            _buildImageHolder(),
            40.y,
            AppText(text: "성별이 뭐야?", fontSize: 18, fontWeight: FontWeight.w600),
            40.y,
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    width: double.infinity,
                    height: 50,
                    color: ColorConstants.white,
                    textColor: ColorConstants.black,
                    text: "남성",
                    onTap: () {
                      controller.nextStep();
                    },
                  ),
                ),
                20.x,
                Expanded(
                  child: AppButton(
                    width: double.infinity,
                    height: 50,
                    color: ColorConstants.white,
                    textColor: ColorConstants.black,
                    text: "여성",
                    onTap: () {
                      controller.nextStep();
                    },
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildStep1() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            40.y,
            _buildImageHolder(),
            40.y,
            _buildConfirmationDialog(),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildConfirmationDialog() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: ColorConstants.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText(text: "남자", fontSize: 18, fontWeight: FontWeight.w600),
          SizedBox(height: 12),
          AppText(
            text: "1996년 2월 1일에",
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          4.y,
          AppText(text: "태어난게 맞을까?", fontSize: 16, fontWeight: FontWeight.w500),
          32.y,
          Row(
            children: [
              Expanded(
                child: AppButton(
                  width: 100,
                  height: 50,
                  color: ColorConstants.barTextColor,
                  textColor: ColorConstants.black,
                  text: "닫기",
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
              20.x,
              Expanded(
                child: AppButton(
                  width: double.infinity,
                  height: 50,
                  text: "수정할게",
                  onTap: () {
                    controller.nextStep();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImageHolder() {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(color: ColorConstants.color08d2d2),
    );
  }
}
