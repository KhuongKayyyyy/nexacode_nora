import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';
import 'package:nora/screens/base/base_screen.dart';

class LandingPageController extends GetxController {
  RxInt currentStep = 0.obs;
  RxString userName = "".obs;
  RxString phoneNumber = "".obs;
  RxBool isNameValid = false.obs;
  RxBool isPhoneValid = false.obs;
  RxBool notificationsEnabled = false.obs;

  // All onboarding messages and content
  final List<Map<String, dynamic>> onboardingSteps = [
    {
      'type': 'intro',
      'message': "안녕!\n나는 ㅁㅁㅁㅁㅁ\nㅁㅁ이야.",
      'buttonText': "Label",
      'buttonAction': 'next',
    },
    {
      'type': 'intro',
      'message': "안녕!\n나는 ㅁㅁㅁㅁㅁ\nㅁㅁ이야.",
      'buttonText': "Label",
      'buttonAction': 'next',
    },
    {
      'type': 'intro',
      'message': "매일\n오늘의 운세를 \n네게 알려줄게!",
      'buttonText': null,
      'buttonAction': 'auto_next',
    },
    {
      'type': 'intro',
      'message': "그전에\n이름을 안물어봤네!!\n뭐라고 불러야할까?",
      'buttonText': null,
      'buttonAction': 'auto_next',
    },
    {
      'type': 'name_input',
      'message': "내 이름은",
      'buttonText': "다음",
      'buttonAction': 'next',
      'inputHint': "이름을 입력하세요",
      'inputType': 'name',
    },
    {
      'type': 'name_input',
      'message': "내 이름은",
      'buttonText': "다음",
      'buttonAction': 'next',
      'inputHint': "이름을 입력하세요",
      'inputType': 'name',
    },
    {
      'type': 'name_input',
      'message': "내 이름은",
      'buttonText': "다음",
      'buttonAction': 'next',
      'inputHint': "이름을 입력하세요",
      'inputType': 'name',
    },
    {
      'type': 'intro',
      'message': "하루미!\n매력적인 이름이네!",
      'buttonText': "고마워",
      'buttonAction': 'next',
    },
    {
      'type': 'intro',
      'message': "본인인증이 필요한데\n핸드폰 번호를 알려줄 수 있을까?",
      'buttonText': "네",
      'buttonAction': 'next',
    },
    {
      'type': 'phone_input',
      'message': "내 전화번호는",
      'buttonText': "다음",
      'buttonAction': 'next',
      'inputHint': "전화번호를 입력하세요",
      'inputType': 'phone',
    },
    {
      'type': 'notification_choice',
      'message': "매일 아침 알림으로\n하루미의 운세를 알려줄까?",
      'buttonText': "네",
      'buttonAction': 'finish',
      'secondaryButtonText': "나중에",
    },
  ];

  @override
  void onInit() {
    super.onInit();
    // Auto-advance for screens without buttons
    ever(currentStep, (int step) {
      if (onboardingSteps[step]['buttonAction'] == 'auto_next') {
        Future.delayed(const Duration(seconds: 2), () {
          if (currentStep.value == step) {
            nextStep();
          }
        });
      }
    });
  }

  void nextStep() {
    if (currentStep.value < onboardingSteps.length - 1) {
      currentStep.value++;
    }
  }

  void previousStep() {
    if (currentStep.value > 0) {
      currentStep.value--;
    }
  }

  void updateUserName(String name) {
    userName.value = name;
    isNameValid.value = name.trim().isNotEmpty;

    // Update the message in step 7 to show the actual name
    if (name.trim().isNotEmpty && currentStep.value >= 7) {
      onboardingSteps[7]['message'] = "${name.trim()}!\n매력적인 이름이네!";
    }

    // Update the notification message in step 10
    if (name.trim().isNotEmpty && currentStep.value >= 10) {
      onboardingSteps[10]['message'] = "매일 아침 알림으로\n${name.trim()}의 운세를 알려줄까?";
    }
  }

  void updatePhoneNumber(String phone) {
    phoneNumber.value = phone;
    isPhoneValid.value = phone.trim().isNotEmpty && phone.length >= 10;
  }

  void setNotifications(bool enabled) {
    notificationsEnabled.value = enabled;
  }

  void handleButtonAction() {
    final currentStepData = onboardingSteps[currentStep.value];
    final action = currentStepData['buttonAction'];

    switch (action) {
      case 'next':
        nextStep();
        break;
      case 'finish':
        Get.offAll(BaseScreen());
        break;
      case 'auto_next':
        // Already handled in onInit
        break;
    }
  }

  bool get canProceed {
    final currentStepData = onboardingSteps[currentStep.value];
    if (currentStepData['type'] == 'name_input') {
      return isNameValid.value;
    } else if (currentStepData['type'] == 'phone_input') {
      return isPhoneValid.value;
    }
    return true;
  }

  Map<String, dynamic> get currentStepData =>
      onboardingSteps[currentStep.value];
}
