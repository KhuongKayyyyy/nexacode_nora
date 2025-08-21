import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nora/components/AppButtonWithTag.dart';
import 'package:nora/screens/horoscope/day_horoscope.dart';
import 'package:nora/screens/horoscope/month_horoscope.dart';
import 'package:nora/screens/tarot_play/tarot_landing_page.dart';

enum ItemCategory {
  dailyFortune,
  monthlyFortune,
  yearlyFortune,
  tarot,
  friendship,
  free,
  event,
  question,
}

class Item {
  final String title;
  final String subtitle;
  final String price;
  final String rating;
  final String viewCount;
  final TagType? tagType;
  final VoidCallback? onTap;
  final ItemCategory? category;

  Item({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.rating,
    required this.viewCount,
    this.tagType,
    this.onTap,
    this.category,
  });

  // Convert Item to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'price': price,
      'rating': rating,
      'viewCount': viewCount,
      'category': category?.name,
    };
  }

  // Create Item from JSON
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      title: json['title'] ?? '',
      subtitle: json['subtitle'] ?? '',
      price: json['price'] ?? '',
      rating: json['rating'] ?? '',
      viewCount: json['viewCount'] ?? '',
      category: json['category'] != null
          ? ItemCategory.values.firstWhere((e) => e.name == json['category'])
          : null,
    );
  }

  static List<Item> getTodayHoroscopeItems() {
    return [
      Item(
        title: "오늘 출한 기대값",
        subtitle: "오늘의 운세와 기대할 수 있는 일들\n하루를 긍정적으로 시작해보세요",
        price: "500젤리",
        rating: "4.6",
        viewCount: "조회수 20만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => DayHoroscope(
              item: Item(
                title: "오늘 출한 기대값",
                subtitle: "오늘의 운세와 기대할 수 있는 일들\n하루를 긍정적으로 시작해보세요",
                price: "500젤리",
                rating: "4.6",
                viewCount: "조회수 20만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "오늘 기운 상태값",
        subtitle: "오늘의 나의 에너지 상태\n컨디션과 기운을 확인해보세요",
        price: "400젤리",
        rating: "4.5",
        viewCount: "조회수 15만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => DayHoroscope(
              item: Item(
                title: "오늘 기운 상태값",
                subtitle: "오늘의 나의 에너지 상태\n컨디션과 기운을 확인해보세요",
                price: "400젤리",
                rating: "4.5",
                viewCount: "조회수 15만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "오늘 진 신체값",
        subtitle: "오늘의 건강 상태와 주의사항\n몸의 신호를 놓치지 마세요",
        price: "450젤리",
        rating: "4.4",
        viewCount: "조회수 12만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => DayHoroscope(
              item: Item(
                title: "오늘 진 신체값",
                subtitle: "오늘의 건강 상태와 주의사항\n몸의 신호를 놓치지 마세요",
                price: "450젤리",
                rating: "4.4",
                viewCount: "조회수 12만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "오늘 가치 인간관계",
        subtitle: "오늘의 인간관계 운세\n소중한 사람들과의 관계를 점검해보세요",
        price: "600젤리",
        rating: "4.7",
        viewCount: "조회수 18만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => DayHoroscope(
              item: Item(
                title: "오늘 가치 인간관계",
                subtitle: "오늘의 인간관계 운세\n소중한 사람들과의 관계를 점검해보세요",
                price: "600젤리",
                rating: "4.7",
                viewCount: "조회수 18만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "요즘 지새생약을",
        subtitle: "최근의 생활 패턴과 변화\n새로운 습관을 만들어보세요",
        price: "700젤리",
        rating: "4.3",
        viewCount: "조회수 9만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => DayHoroscope(
              item: Item(
                title: "요즘 지새생약을",
                subtitle: "최근의 생활 패턴과 변화\n새로운 습관을 만들어보세요",
                price: "700젤리",
                rating: "4.3",
                viewCount: "조회수 9만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "지금 돈숙님 해답",
        subtitle: "현재 고민에 대한 명확한 답\n타로가 제시하는 해결책을 확인하세요",
        price: "1,100젤리",
        rating: "4.8",
        viewCount: "조회수 25만회+",
        tagType: null,
        onTap: () {},
      ),
      Item(
        title: "돈기호와 상정 재세",
        subtitle: "돈과 관련된 운세와 재정 상황\n금전 운을 개선하는 방법",
        price: "1,300젤리",
        rating: "4.6",
        viewCount: "조회수 16만회+",
        tagType: null,
        onTap: () {},
      ),
      Item(
        title: "돈기호와 수채 왕해생",
        subtitle: "재물운과 투자에 대한 조언\n현명한 재정 관리 방법",
        price: "1,400젤리",
        rating: "4.7",
        viewCount: "조회수 19만회+",
        tagType: null,
        onTap: () {},
      ),
      Item(
        title: "학끊 터터 가냄면",
        subtitle: "학업이나 진로에 대한 고민\n올바른 방향을 찾아보세요",
        price: "900젤리",
        rating: "4.5",
        viewCount: "조회수 11만회+",
        tagType: null,
        onTap: () {},
      ),
      Item(
        title: "가시망 공 가냄서 설굽",
        subtitle: "복잡한 상황에서의 선택\n타로가 알려주는 최선의 방법",
        price: "1,000젤리",
        rating: "4.4",
        viewCount: "조회수 13만회+",
        tagType: null,
        onTap: () {},
      ),
      Item(
        title: "칠문양 더 말냄세",
        subtitle: "말하지 못한 마음과 감정\n솔직한 마음을 표현하는 방법",
        price: "800젤리",
        rating: "4.6",
        viewCount: "조회수 14만회+",
        tagType: null,
        onTap: () {},
      ),
      Item(
        title: "내궁 향 세게 가면",
        subtitle: "내 인생의 방향과 목표\n앞으로 나아갈 길을 찾아보세요",
        price: "1,200젤리",
        rating: "4.8",
        viewCount: "조회수 22만회+",
        tagType: null,
        onTap: () {},
      ),
    ];
  }

  // Mock data generator
  static List<Item> getMockDailyFortuneItems() {
    return [
      Item(
        title: "솔로 탈출 시기",
        subtitle: "언제쯤 솔로에서 벗어날 수 있을까요?\n나의 연애 시기를 알아보세요",
        price: "800젤리",
        rating: "4.8",
        viewCount: "조회수 18만회+",
        tagType: TagType.newTag,
        onTap: () {
          Get.to(
            () => DayHoroscope(
              item: Item(
                title: "솔로 탈출 시기",
                subtitle: "언제쯤 솔로에서 벗어날 수 있을까요?\n나의 연애 시기를 알아보세요",
                price: "800젤리",
                rating: "4.8",
                viewCount: "조회수 18만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "둘 중에 뭐 먹지?",
        subtitle: "앞으로 몇 번의 연애가 더 기다리고 있을까요?\n나의 연애 운명을 확인해보세요",
        price: "900젤리",
        rating: "4.7",
        viewCount: "조회수 22만회+",
        tagType: TagType.hot,
        onTap: () {
          Get.to(
            () => TarotLandingPage(
              item: Item(
                title: "둘 중에 뭐 먹지?",
                subtitle: "앞으로 몇 번의 연애가 더 기다리고 있을까요?\n나의 연애 운명을 확인해보세요",
                price: "900젤리",
                rating: "4.7",
                viewCount: "조회수 22만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "둘 중에 뭐먹지?",
        subtitle: "사주로 분석하는 나와 그 사람의 궁합\n운명적인 만남인지 확인해보세요",
        price: "1,200젤리",
        rating: "4.9",
        viewCount: "조회수 35만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => TarotLandingPage(
              item: Item(
                title: "둘 중에 뭐먹지?",
                subtitle: "사주로 분석하는 나와 그 사람의 궁합\n운명적인 만남인지 확인해보세요",
                price: "1,200젤리",
                rating: "4.9",
                viewCount: "조회수 35만회+",
              ),
            ),
          );
          Get.to(
            () => TarotLandingPage(
              item: Item(
                title: "둘 중에 뭐먹지?",
                subtitle: "사주로 분석하는 나와 그 사람의 궁합\n운명적인 만남인지 확인해보세요",
                price: "1,200젤리",
                rating: "4.9",
                viewCount: "조회수 35만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "내게 맞는 부업 찾기",
        subtitle: "헤어진 그 사람과 다시 만날 수 있을까요?\n재회 가능성을 사주로 알아보세요",
        price: "1,500젤리",
        rating: "4.6",
        viewCount: "조회수 15만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "내게 맞는 부업 찾기",
                subtitle: "헤어진 그 사람과 다시 만날 수 있을까요?\n재회 가능성을 사주로 알아보세요",
                price: "1,500젤리",
                rating: "4.6",
                viewCount: "조회수 15만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "사주로 보는 남은 연애 횟수",
        subtitle: "나는 평생 몇 번 연애를 할지부터\n3년간의 연애운까지 내가 사주로 읽어줄게",
        price: "1,800젤리",
        rating: "4.8",
        viewCount: "조회수 28만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "사주로 보는 남은 연애 횟수",
                subtitle: "나는 평생 몇 번 연애를 할지부터\n3년간의 연애운까지 내가 사주로 읽어줄게",
                price: "1,800젤리",
                rating: "4.8",
                viewCount: "조회수 28만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "사주로 보는 너와 나의 궁합",
        subtitle: "우리 과연 오래갈 수 있을까?\n성공적인 연애를 꿈꾼다면 사주 속 궁합을 확인해보자!",
        price: "1,000젤리",
        rating: "4.7",
        viewCount: "조회수 20만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "사주로 보는 너와 나의 궁합",
                subtitle: "우리 과연 오래갈 수 있을까?\n성공적인 연애를 꿈꾼다면 사주 속 궁합을 확인해보자!",
                price: "1,000젤리",
                rating: "4.7",
                viewCount: "조회수 20만회+",
              ),
            ),
          );
        },
      ),
    ];
  }

  static List<Item> getMockMonthlyFortuneItems() {
    return [
      Item(
        title: "6월 솔로 연애운 리포트",
        subtitle: "솔로인 당신을 위한 6월 한 달 연애운\n새로운 인연의 가능성을 확인해보세요",
        price: "1,500젤리",
        rating: "4.7",
        viewCount: "조회수 9만회+",
        tagType: TagType.newTag,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "6월 솔로 연애운 리포트",
                subtitle: "솔로인 당신을 위한 6월 한 달 연애운\n새로운 인연의 가능성을 확인해보세요",
                price: "1,500젤리",
                rating: "4.7",
                viewCount: "조회수 9만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "6월 타로 커플 애정운",
        subtitle: "커플을 위한 6월 한 달 애정운\n연인의 마음과 관계 흐름을 확인해보세요",
        price: "1,800젤리",
        rating: "4.8",
        viewCount: "조회수 12만회+",
        tagType: TagType.hot,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "6월 타로 커플 애정운",
                subtitle: "커플을 위한 6월 한 달 애정운\n연인의 마음과 관계 흐름을 확인해보세요",
                price: "1,800젤리",
                rating: "4.8",
                viewCount: "조회수 12만회+",
              ),
            ),
          );
        },
      ),

      Item(
        title: "6월 사주 애정운",
        subtitle: "6월 사주로 보는 애정운\n새로운 사랑이 찾아올까요?",
        price: "1,500젤리",
        rating: "4.8",
        viewCount: "조회수 15만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "6월 사주 애정운",
                subtitle: "6월 사주로 보는 애정운\n새로운 사랑이 찾아올까요?",
                price: "1,500젤리",
                rating: "4.8",
                viewCount: "조회수 15만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "6월 사주 재물운",
        subtitle: "6월 사주로 보는 재물운\n재정 상태와 투자 운을 확인하세요",
        price: "1,800젤리",
        rating: "4.9",
        viewCount: "조회수 20만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "6월 사주 재물운",
                subtitle: "6월 사주로 보는 재물운\n재정 상태와 투자 운을 확인하세요",
                price: "1,800젤리",
                rating: "4.9",
                viewCount: "조회수 20만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "6월 사주 건강운",
        subtitle: "6월 사주로 보는 건강운\n건강 관리 포인트를 알려드려요",
        price: "1,000젤리",
        rating: "4.6",
        viewCount: "조회수 8만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "6월 사주 건강운",
                subtitle: "6월 사주로 보는 건강운\n건강 관리 포인트를 알려드려요",
                price: "1,000젤리",
                rating: "4.6",
                viewCount: "조회수 8만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "6월 사주 목적달성",
        subtitle: "6월에 이루고 싶은 목표가 있나요?\n목적 달성 운세를 확인해보세요",
        price: "1,400젤리",
        rating: "4.7",
        viewCount: "조회수 12만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "6월 사주 목적달성",
                subtitle: "6월에 이루고 싶은 목표가 있나요?\n목적 달성 운세를 확인해보세요",
                price: "1,400젤리",
                rating: "4.7",
                viewCount: "조회수 12만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "6월 사주 직장운",
        subtitle: "6월 사주로 보는 직장운\n승진과 이직 운세를 확인하세요",
        price: "1,600젤리",
        rating: "4.7",
        viewCount: "조회수 18만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "6월 사주 직장운",
                subtitle: "6월 사주로 보는 직장운\n승진과 이직 운세를 확인하세요",
                price: "1,600젤리",
                rating: "4.7",
                viewCount: "조회수 18만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "6월 사주 대인관계운",
        subtitle: "6월 사주로 보는 인간관계\n새로운 인연과 갈등 해결",
        price: "1,400젤리",
        rating: "4.9",
        viewCount: "조회수 22만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "6월 사주 대인관계운",
                subtitle: "6월 사주로 보는 인간관계\n새로운 인연과 갈등 해결",
                price: "1,400젤리",
                rating: "4.9",
                viewCount: "조회수 22만회+",
              ),
            ),
          );
        },
      ),
    ];
  }

  static List<Item> getMockYearlyFortuneItems() {
    return [
      Item(
        title: "2025 신년 운세",
        subtitle: "작년 5만명이 본 신년운세, 업그레이드가 되어 돌아왔다!",
        price: "2,000젤리",
        rating: "4.9",
        viewCount: "조회수 31만회+",
        tagType: TagType.newTag,
        category: ItemCategory.yearlyFortune,
        onTap: () {},
      ),
      Item(
        title: "2025 연간 애정운",
        subtitle: "2025년 한 해 동안의 연애 운세\n올해 사랑은 어떻게 흘러갈까요?",
        price: "2,500젤리",
        rating: "4.8",
        viewCount: "조회수 28만회+",
        category: ItemCategory.yearlyFortune,
        onTap: () {},
      ),
      Item(
        title: "2025 연간 재물운",
        subtitle: "2025년 재정 상황과 투자 운세\n올해의 돈 흐름을 미리 확인하세요",
        price: "2,200젤리",
        rating: "4.7",
        viewCount: "조회수 25만회+",
        category: ItemCategory.yearlyFortune,
        onTap: () {},
      ),
    ];
  }

  static List<Item> getMockTarotItems() {
    return [
      Item(
        title: "사주로 보는 절대 결혼하면 안되는 사람",
        subtitle: "앞으로 만나게 될 사람 중\n절대 결혼하면 안되는 사람이 있어\n미리미리 확인하고 행복한 결혼생활 하자!",
        price: "2,000젤리",
        rating: "4.8",
        viewCount: "조회수 25만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "사주로 보는 절대 결혼하면 안되는 사람",
                subtitle:
                    "앞으로 만나게 될 사람 중\n절대 결혼하면 안되는 사람이 있어\n미리미리 확인하고 행복한 결혼생활 하자!",
                price: "2,000젤리",
                rating: "4.8",
                viewCount: "조회수 25만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "사주로 보는 심화 재회 리포트",
        subtitle: "헤어졌는데도 생각나는 그 사람 다시 만날 수 있을까? 신중하게 알아보자",
        price: "1,500젤리",
        rating: "4.7",
        viewCount: "조회수 18만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => MonthHoroscope(
              item: Item(
                title: "사주로 보는 심화 재회 리포트",
                subtitle: "헤어졌는데도 생각나는 그 사람 다시 만날 수 있을까? 신중하게 알아보자",
                price: "1,500젤리",
                rating: "4.7",
                viewCount: "조회수 18만회+",
              ),
            ),
          );
        },
      ),
    ];
  }

  static List<Item> getMockFriendshipItems() {
    return [
      Item(
        title: "2025 친구와의 궁합",
        subtitle: "2025년 친구와의 궁합을 확인해보세요\n새로운 인연과 우정을 알아보세요",
        price: "2,000젤리",
        rating: "4.9",
        viewCount: "조회수 25만회+",
        tagType: TagType.event,
        category: ItemCategory.friendship,
        onTap: () {},
      ),
      Item(
        title: "친구 관계 타로",
        subtitle: "친구와의 관계에 대한 타로 리딩\n우정의 깊이와 앞으로의 관계를 확인하세요",
        price: "1,200젤리",
        rating: "4.6",
        viewCount: "조회수 15만회+",
        category: ItemCategory.friendship,
        onTap: () {},
      ),
    ];
  }

  static List<Item> getMockFreeItems() {
    return [
      Item(
        title: "무료 택 년운",
        subtitle: "2025년 무료 연간 운세\n새해의 전체적인 운세를 확인하세요",
        price: "무료",
        rating: "4.7",
        viewCount: "조회수 50만회+",
        category: ItemCategory.free,
        onTap: () {},
      ),
      Item(
        title: "무료 택 월 운세",
        subtitle: "이번 달 무료 운세\n한 달의 운세를 미리 확인해보세요",
        price: "무료",
        rating: "4.6",
        viewCount: "조회수 35만회+",
        category: ItemCategory.free,
        onTap: () {},
      ),
      Item(
        title: "무료 택운세",
        subtitle: "무료로 보는 오늘의 운세\n매일 확인하는 나의 운세",
        price: "무료",
        rating: "4.8",
        viewCount: "조회수 100만회+",
        category: ItemCategory.free,
        onTap: () {},
      ),
    ];
  }

  static List<Item> getMockWorkItems() {
    return [
      Item(
        title: "먼저 택 구상하기",
        subtitle: "2025년 계획을 세우기 전에\n타로로 먼저 방향을 잡아보세요",
        price: "1,200젤리",
        rating: "4.5",
        viewCount: "조회수 15만회+",
        tagType: null,
        onTap: () {},
      ),
      Item(
        title: "필받 광 용",
        subtitle: "필요한 용기와 에너지\n2025년을 위한 마음의 준비",
        price: "900젤리",
        rating: "4.4",
        viewCount: "조회수 12만회+",
        tagType: null,
        onTap: () {},
      ),
      Item(
        title: "제목나랜과 특수 행복하기",
        subtitle: "특별한 행복을 찾는 방법\n2025년 나만의 행복 찾기",
        price: "1,500젤리",
        rating: "4.6",
        viewCount: "조회수 18만회+",
        tagType: null,
        onTap: () {},
      ),
    ];
  }

  static List<Item> getMockQuestionItems() {
    return [
      Item(
        title: "YES/NO 타로",
        subtitle: "궁금한 질문에 대한 명확한 답\n예 또는 아니오로 답하는 타로",
        price: "500젤리",
        rating: "4.8",
        viewCount: "조회수 45만회+",
        tagType: null,
        onTap: () {
          Get.to(
            () => TarotLandingPage(
              item: Item(
                title: "YES/NO 타로",
                subtitle: "궁금한 질문에 대한 명확한 답\n예 또는 아니오로 답하는 타로",
                price: "500젤리",
                rating: "4.8",
                viewCount: "조회수 45만회+",
              ),
            ),
          );
        },
      ),
      Item(
        title: "신년 택 월운세",
        subtitle: "신년 특별 월간 운세 질문\n새해 첫 달에 대한 궁금증 해결",
        price: "800젤리",
        rating: "4.6",
        viewCount: "조회수 22만회+",
        tagType: null,
        onTap: () {},
      ),
      Item(
        title: "신년 택운세",
        subtitle: "신년 운세에 대한 질문\n새해에 대한 모든 궁금증",
        price: "1,000젤리",
        rating: "4.7",
        viewCount: "조회수 28만회+",
        tagType: null,
        onTap: () {},
      ),
    ];
  }

  static List<Item> getAllMockItems() {
    return [
      ...getMockDailyFortuneItems(),
      ...getMockMonthlyFortuneItems(),
      ...getMockYearlyFortuneItems(),
      ...getMockTarotItems(),
      ...getMockFriendshipItems(),
      ...getMockFreeItems(),
      ...getMockWorkItems(),
      ...getMockQuestionItems(),
    ];
  }
}
