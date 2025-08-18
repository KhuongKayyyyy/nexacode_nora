import 'package:get/get.dart';

class MorePersonalInformationController extends GetxController {
  // Current step in the multi-step form
  var currentStep = 1.obs;

  // Personal information data
  var selectedGender = ''.obs;
  var birthDate = ''.obs;
  var birthHour = 0.obs;
  var birthMinute = 0.obs;

  void nextStep() {
    if (currentStep.value < 4) {
      currentStep.value++;
    }
  }

  void previousStep() {
    if (currentStep.value > 1) {
      currentStep.value--;
    }
  }

  void setGender(String gender) {
    selectedGender.value = gender;
  }

  void setBirthDate(String date) {
    birthDate.value = date;
  }

  void setBirthTime(int hour, int minute) {
    birthHour.value = hour;
    birthMinute.value = minute;
  }

  void resetForm() {
    currentStep.value = 1;
    selectedGender.value = '';
    birthDate.value = '';
    birthHour.value = 0;
    birthMinute.value = 0;
  }
}
