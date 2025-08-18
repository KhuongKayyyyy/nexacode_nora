import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nora/application/controllers/landing_page_controller.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/constants/ColorConstants.dart';

class LandingPage extends GetView<LandingPageController> {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Obx(() => _buildCurrentStep())),
    );
  }

  Widget _buildCurrentStep() {
    final stepData = controller.currentStepData;
    final stepType = stepData['type'];

    return Column(
      children: [
        // Main content area
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // Blue placeholder square
                _buildBluePlaceholder(),

                const SizedBox(height: 30),

                // Content based on step type
                if (stepType == 'intro') _buildIntroContent(stepData),
                if (stepType == 'name_input') _buildNameInputContent(stepData),
                if (stepType == 'phone_input')
                  _buildPhoneInputContent(stepData),
                if (stepType == 'notification_choice')
                  _buildNotificationChoiceContent(stepData),

                const Spacer(),

                // Action buttons
                _buildActionButtons(stepData),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBluePlaceholder() {
    return Expanded(
      child: Center(
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: const Color(0xFFE3F2FD),
            border: Border.all(
              color: const Color(0xFF2196F3),
              width: 2,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Icon(Icons.image, size: 64, color: const Color(0xFF2196F3)),
          ),
        ),
      ),
    );
  }

  Widget _buildIntroContent(Map<String, dynamic> stepData) {
    return Column(
      children: [
        AppText(
          text: stepData['message'],
          textAlign: TextAlign.center,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ],
    );
  }

  Widget _buildNameInputContent(Map<String, dynamic> stepData) {
    return Column(
      children: [
        AppText(
          text: stepData['message'],
          textAlign: TextAlign.center,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: controller.isNameValid.value
                  ? const Color(0xFF4CAF50)
                  : const Color(0xFF2196F3),
              width: 2,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: TextField(
            onChanged: controller.updateUserName,
            decoration: InputDecoration(
              hintText: stepData['inputHint'],
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
              suffixIcon: controller.isNameValid.value
                  ? Icon(
                      Icons.check_circle,
                      color: const Color(0xFF4CAF50),
                      size: 20,
                    )
                  : null,
            ),
            style: const TextStyle(fontSize: 16),
            textInputAction: TextInputAction.done,
          ),
        ),
        if (controller.userName.value.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              "입력된 이름: ${controller.userName.value}",
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
          ),
      ],
    );
  }

  Widget _buildPhoneInputContent(Map<String, dynamic> stepData) {
    return Column(
      children: [
        AppText(
          text: stepData['message'],
          textAlign: TextAlign.center,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: controller.isPhoneValid.value
                  ? const Color(0xFF4CAF50)
                  : const Color(0xFF2196F3),
              width: 2,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: TextField(
            onChanged: controller.updatePhoneNumber,
            keyboardType: TextInputType.phone,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              hintText: stepData['inputHint'],
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
              suffixIcon: controller.isPhoneValid.value
                  ? Icon(
                      Icons.check_circle,
                      color: const Color(0xFF4CAF50),
                      size: 20,
                    )
                  : null,
            ),
            style: const TextStyle(fontSize: 16),
            textInputAction: TextInputAction.done,
          ),
        ),
        if (controller.phoneNumber.value.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              "입력된 번호: ${controller.phoneNumber.value}",
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
          ),
      ],
    );
  }

  Widget _buildNotificationChoiceContent(Map<String, dynamic> stepData) {
    return Column(
      children: [
        AppText(
          text: stepData['message'],
          textAlign: TextAlign.center,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ],
    );
  }

  Widget _buildActionButtons(Map<String, dynamic> stepData) {
    final buttonText = stepData['buttonText'];
    final secondaryButtonText = stepData['secondaryButtonText'];
    final canProceed = controller.canProceed;

    if (buttonText == null) {
      return const SizedBox.shrink();
    }

    if (secondaryButtonText != null) {
      // Two buttons (notification choice screen)
      return Row(
        children: [
          Expanded(
            child: AppButton(
              text: secondaryButtonText,
              onTap: () {
                controller.setNotifications(false);
                controller.handleButtonAction();
              },
              color: ColorConstants.btnDefaultColor,
              textColor: ColorConstants.appGrayBtn,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: AppButton(
              text: buttonText,
              onTap: () {
                controller.setNotifications(true);
                controller.handleButtonAction();
              },
            ),
          ),
        ],
      );
    }

    // Single button
    return AppButton(
      text: buttonText,
      onTap: canProceed ? controller.handleButtonAction : () {},
      color: canProceed
          ? ColorConstants.btnDefaultColor
          : ColorConstants.appGrayBG,
      textColor: canProceed ? Colors.white : ColorConstants.appGrayBtn,
    );
  }
}
