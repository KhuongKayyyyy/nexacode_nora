import 'package:get/get.dart';

class BaseController extends GetxController {
  static BaseController get to => Get.find<BaseController>();

  var _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  void setCurrentIndex(int index) {
    _currentIndex.value = index;
  }
}
