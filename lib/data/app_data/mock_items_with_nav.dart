import 'package:get/get.dart';
import 'package:nora/data/model/item.dart';
import 'package:nora/screens/horoscope/day_horoscope.dart';
import 'package:nora/screens/horoscope/month_horoscope.dart';
import 'package:nora/screens/horoscope/year_horoscope.dart';
import 'package:nora/screens/horoscope/friendship_horoscope.dart';
import 'package:nora/screens/tarot_play/tarot_landing_page.dart';

/// Navigation-ready mock items for Homepage sections.
/// These wrap existing Item mock generators and attach onTap handlers
/// that navigate to the appropriate screens.

List<Item> getMockDailyFortuneItemsWithNav() {
  return Item.getMockDailyFortuneItems().map((item) {
    return Item(
      title: item.title,
      subtitle: item.subtitle,
      price: item.price,
      rating: item.rating,
      viewCount: item.viewCount,
      tagType: item.tagType,
      category: item.category,
      onTap: () {
        Get.to(() => DayHoroscope(item: item));
      },
    );
  }).toList();
}

List<Item> getMockMonthlyFortuneItemsWithNav() {
  return Item.getMockMonthlyFortuneItems().map((item) {
    return Item(
      title: item.title,
      subtitle: item.subtitle,
      price: item.price,
      rating: item.rating,
      viewCount: item.viewCount,
      tagType: item.tagType,
      category: item.category,
      onTap: () {
        Get.to(() => MonthHoroscope(item: item));
      },
    );
  }).toList();
}

List<Item> getMockYearlyFortuneItemsWithNav() {
  return Item.getMockYearlyFortuneItems().map((item) {
    return Item(
      title: item.title,
      subtitle: item.subtitle,
      price: item.price,
      rating: item.rating,
      viewCount: item.viewCount,
      tagType: item.tagType,
      category: item.category,
      onTap: () {
        Get.to(() => YearHoroscope(item: item));
      },
    );
  }).toList();
}

List<Item> getMockTarotItemsWithNav() {
  return Item.getMockTarotItems().map((item) {
    return Item(
      title: item.title,
      subtitle: item.subtitle,
      price: item.price,
      rating: item.rating,
      viewCount: item.viewCount,
      tagType: item.tagType,
      category: item.category,
      onTap: () {
        Get.to(() => TarotLandingPage(item: item));
      },
    );
  }).toList();
}

List<Item> getMockFriendshipItemsWithNav() {
  return Item.getMockFriendshipItems().map((item) {
    return Item(
      title: item.title,
      subtitle: item.subtitle,
      price: item.price,
      rating: item.rating,
      viewCount: item.viewCount,
      tagType: item.tagType,
      category: item.category,
      onTap: () {
        Get.to(() => const FriendshipHoroscope());
      },
    );
  }).toList();
}

List<Item> getMockFreeItemsWithNav() {
  return Item.getMockFreeItems().map((item) {
    return Item(
      title: item.title,
      subtitle: item.subtitle,
      price: item.price,
      rating: item.rating,
      viewCount: item.viewCount,
      tagType: item.tagType,
      category: item.category,
      onTap: () {
        // Route free items to a generic landing (Tarot or Month). Use Tarot for now.
        Get.to(() => TarotLandingPage(item: item));
      },
    );
  }).toList();
}

List<Item> getMockEventItemsWithNav() {
  return Item.getMockWorkItems().map((item) {
    return Item(
      title: item.title,
      subtitle: item.subtitle,
      price: item.price,
      rating: item.rating,
      viewCount: item.viewCount,
      tagType: item.tagType,
      category: item.category,
      onTap: () {
        Get.to(() => const FriendshipHoroscope());
      },
    );
  }).toList();
}

List<Item> getMockQuestionItemsWithNav() {
  return Item.getMockQuestionItems().map((item) {
    return Item(
      title: item.title,
      subtitle: item.subtitle,
      price: item.price,
      rating: item.rating,
      viewCount: item.viewCount,
      tagType: item.tagType,
      category: item.category,
      onTap: () {
        Get.to(() => TarotLandingPage(item: item));
      },
    );
  }).toList();
}

List<Item> getAllMockItemsWithNav() {
  return [
    ...getMockDailyFortuneItemsWithNav(),
    ...getMockMonthlyFortuneItemsWithNav(),
    ...getMockYearlyFortuneItemsWithNav(),
    ...getMockTarotItemsWithNav(),
    ...getMockFriendshipItemsWithNav(),
    ...getMockFreeItemsWithNav(),
    ...getMockEventItemsWithNav(),
    ...getMockQuestionItemsWithNav(),
  ];
}

/// Generic helper: attach navigation based on Item.category
List<Item> withNavByCategory(List<Item> items) {
  return items.map((item) {
    return Item(
      title: item.title,
      subtitle: item.subtitle,
      price: item.price,
      rating: item.rating,
      viewCount: item.viewCount,
      tagType: item.tagType,
      category: item.category,
      onTap: () {
        switch (item.category) {
          case ItemCategory.dailyFortune:
            Get.to(() => DayHoroscope(item: item));
            break;
          case ItemCategory.monthlyFortune:
            Get.to(() => MonthHoroscope(item: item));
            break;
          case ItemCategory.yearlyFortune:
            Get.to(() => YearHoroscope(item: item));
            break;
          case ItemCategory.tarot:
            Get.to(() => TarotLandingPage(item: item));
            break;
          case ItemCategory.friendship:
            Get.to(() => const FriendshipHoroscope());
            break;
          case ItemCategory.free:
            Get.to(() => TarotLandingPage(item: item));
            break;
          case ItemCategory.event:
            Get.to(() => const FriendshipHoroscope());
            break;
          case ItemCategory.question:
            Get.to(() => TarotLandingPage(item: item));
            break;
          default:
            Get.to(() => TarotLandingPage(item: item));
        }
      },
    );
  }).toList();
}

List<Item> getAllMockItemsWithNavByCategory() {
  return withNavByCategory(Item.getAllMockItems());
}
