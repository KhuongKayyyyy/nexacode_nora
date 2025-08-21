import 'package:get/get.dart';
import 'package:nora/data/model/item.dart';

class HomeController extends GetxController {
  final RxList<Item> dailyFortuneItems = <Item>[].obs;
  final RxList<Item> monthlyFortuneItems = <Item>[].obs;
  final RxList<Item> yearlyFortuneItems = <Item>[].obs;
  final RxList<Item> tarotItems = <Item>[].obs;
  final RxList<Item> friendshipItems = <Item>[].obs;
  final RxList<Item> freeItems = <Item>[].obs;
  final RxList<Item> workItems = <Item>[].obs;
  final RxList<Item> questionItems = <Item>[].obs;
  final RxList<Item> todayHoroscopeItems = <Item>[].obs;

  @override
  void onInit() {
    super.onInit();
    dailyFortuneItems.value = Item.getMockDailyFortuneItems();
    monthlyFortuneItems.value = Item.getMockMonthlyFortuneItems();
    yearlyFortuneItems.value = Item.getMockYearlyFortuneItems();
    tarotItems.value = Item.getMockTarotItems();
    friendshipItems.value = Item.getMockFriendshipItems();
    freeItems.value = Item.getMockFreeItems();
    workItems.value = Item.getMockWorkItems();
    questionItems.value = Item.getMockQuestionItems();
    todayHoroscopeItems.value = Item.getTodayHoroscopeItems();
  }
}
