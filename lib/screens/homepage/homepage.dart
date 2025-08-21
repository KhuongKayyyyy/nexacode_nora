import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppBubbleChat.dart';
import 'package:nora/components/AppButtonWithTag.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/data/model/item.dart';
import 'package:nora/screens/homepage/components/day_count_item.dart';
import 'package:nora/screens/homepage/components/home_navigation_section.dart';
import 'package:nora/screens/homepage/components/function_secion.dart';
import 'package:nora/screens/horoscope/day_horoscope.dart';
import 'package:nora/screens/horoscope/friendship_horoscope.dart';
import 'package:nora/screens/horoscope/month_horoscope.dart';
import 'package:nora/screens/horoscope/year_horoscope.dart';
import 'package:nora/screens/tarot_play/tarot_landing_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DayCountItem(title: "하루미님이 ㅁㅁ와 함께한지 ㅁ일 째"),
                32.y,
                AppBubbleChat(text: "안녕하세요", backgroundColor: Colors.white),
                16.y,
                Center(child: AppPlaceHolder(width: 160, height: 160)),
                16.y,
                HomeNavigationSection(),
                16.y,
                AppButtonWithTag(
                  item: Item(
                    title: "2025 신년 운세",
                    subtitle: "작년 5만명이 본 신년운세, 업그레이드가 되어 돌아왔다!",
                    price: "2,000젤리",
                    rating: "4.9",
                    viewCount: "조회수 31만회+",
                  ),
                  text: "2025 신년 운세",
                  tagType: TagType.newTag,
                  onTap: () {
                    Get.to(
                      () => YearHoroscope(
                        item: Item(
                          title: "2025 신년 운세",
                          subtitle: "작년 5만명이 본 신년운세, 업그레이드가 되어 돌아왔다!",
                          price: "2,000젤리",
                          rating: "4.9",
                          viewCount: "조회수 31만회+",
                        ),
                      ),
                    );
                  },
                ),
                16.y,
                FunctionSection(
                  title: "오늘의 운세",
                  items: [
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
                              subtitle:
                                  "앞으로 몇 번의 연애가 더 기다리고 있을까요?\n나의 연애 운명을 확인해보세요",
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
                              subtitle:
                                  "사주로 분석하는 나와 그 사람의 궁합\n운명적인 만남인지 확인해보세요",
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
                              subtitle:
                                  "사주로 분석하는 나와 그 사람의 궁합\n운명적인 만남인지 확인해보세요",
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
                              subtitle:
                                  "헤어진 그 사람과 다시 만날 수 있을까요?\n재회 가능성을 사주로 알아보세요",
                              price: "1,500젤리",
                              rating: "4.6",
                              viewCount: "조회수 15만회+",
                            ),
                          ),
                        );
                      },
                    ),
                    Item(
                      title: "내게 맞는 부업 찾기",
                      subtitle: "결혼 전에 꼭 확인해야 할 사주 궁합\n피해야 할 상대를 미리 알아보세요",
                      price: "1,800젤리",
                      rating: "4.8",
                      viewCount: "조회수 28만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                    Item(
                      title: "나의 도화살 찾기",
                      subtitle: "나에게 매력을 느끼는 사람의 특징\n도화살 운세로 알아보는 이성운",
                      price: "1,000젤리",
                      rating: "4.7",
                      viewCount: "조회수 20만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "사주로 보는 6월 운세",
                  items: [
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
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "타로 상담 소원 성취",
                  items: [
                    Item(
                      title: "갑하 결혼",
                      subtitle: "결혼에 대한 고민이 있으신가요?\n타로로 결혼 운세를 알아보세요",
                      price: "2,000젤리",
                      rating: "4.8",
                      viewCount: "조회수 25만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                    Item(
                      title: "김 기업 적합성",
                      subtitle: "취업이나 이직을 고민 중이신가요?\n기업과의 적합성을 타로로 확인하세요",
                      price: "1,500젤리",
                      rating: "4.7",
                      viewCount: "조회수 18만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "타로 상담 궁금하다",
                  items: [
                    Item(
                      title: "해수한턴 시나리오",
                      subtitle: "궁금한 상황의 결과가 어떻게 될까요?\n타로로 미래 시나리오를 확인하세요",
                      price: "1,200젤리",
                      rating: "4.6",
                      viewCount: "조회수 14만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                    Item(
                      title: "청신기능동",
                      subtitle: "새로운 시작을 고민 중이신가요?\n타로로 새로운 변화를 알아보세요",
                      price: "1,000젤리",
                      rating: "4.5",
                      viewCount: "조회수 10만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "다른 타로 궁금하다",
                  items: [
                    Item(
                      title: "학교 따뜻함",
                      subtitle: "학교나 직장에서의 인간관계\n따뜻한 관계를 만들어가는 방법",
                      price: "800젤리",
                      rating: "4.7",
                      viewCount: "조회수 12만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                    Item(
                      title: "한국적 색제현",
                      subtitle: "한국적 감성의 색깔 운세\n나에게 어울리는 색깔을 찾아보세요",
                      price: "600젤리",
                      rating: "4.4",
                      viewCount: "조회수 8만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "",
                  items: [
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
                  ],
                ),
                16.y,
                AppText(
                  text: "진행 중인 이벤트",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                16.y,
                AppButtonWithTag(
                  text: "2025 친구와의 궁합",
                  tagType: TagType.event,
                  item: Item(
                    title: "2025 친구와의 궁합",
                    subtitle: '2025년 친구와의 궁합을 확인해보세요\n새로운 인연과 우정을 알아보세요',
                    price: '2,000젤리',
                    rating: '4.9',
                    viewCount: '조회수 25만회+',
                  ),
                  onTap: () {
                    Get.to(() => FriendshipHoroscope());
                  },
                ),
                16.y,
                FunctionSection(
                  title: "2025 신년운세 무료",
                  items: [
                    Item(
                      title: "무료 택 년운",
                      subtitle: "2025년 무료 연간 운세\n새해의 전체적인 운세를 확인하세요",
                      price: "무료",
                      rating: "4.7",
                      viewCount: "조회수 50만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                    Item(
                      title: "무료 택 월 운세",
                      subtitle: "이번 달 무료 운세\n한 달의 운세를 미리 확인해보세요",
                      price: "무료",
                      rating: "4.6",
                      viewCount: "조회수 35만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                    Item(
                      title: "무료 택운세",
                      subtitle: "무료로 보는 오늘의 운세\n매일 확인하는 나의 운세",
                      price: "무료",
                      rating: "4.8",
                      viewCount: "조회수 100만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                    Item(
                      title: "신년 택 월운세",
                      subtitle: "신년 특별 월간 운세\n새해 첫 달의 특별한 운세",
                      price: "무료",
                      rating: "4.5",
                      viewCount: "조회수 28만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                    Item(
                      title: "내년 택 월운세",
                      subtitle: "내년을 위한 준비 운세\n미래를 대비하는 운세 확인",
                      price: "무료",
                      rating: "4.4",
                      viewCount: "조회수 20만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                    Item(
                      title: "신년 택 운세",
                      subtitle: "신년 특별 운세\n새해를 맞이하는 특별한 운세",
                      price: "무료",
                      rating: "4.7",
                      viewCount: "조회수 42만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                    Item(
                      title: "신년 택운세",
                      subtitle: "간단한 신년 운세 확인\n빠르게 보는 새해 운세",
                      price: "무료",
                      rating: "4.6",
                      viewCount: "조회수 38만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "신년 택",
                  items: [
                    Item(
                      title: "신년 택운세",
                      subtitle: "신년을 맞이하는 특별 운세\n새로운 시작을 위한 운세",
                      price: "1,000젤리",
                      rating: "4.7",
                      viewCount: "조회수 30만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                    Item(
                      title: "신년 택 운세",
                      subtitle: "신년 상세 운세 분석\n깊이 있는 새해 운세 확인",
                      price: "1,500젤리",
                      rating: "4.8",
                      viewCount: "조회수 25만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                    Item(
                      title: "신년 택월운세",
                      subtitle: "신년 월별 운세 정보\n매월 바뀌는 운세의 흐름",
                      price: "2,000젤리",
                      rating: "4.6",
                      viewCount: "조회수 18만회+",
                      tagType: null,
                      onTap: () {},
                    ),
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "신년운세 질문 입니다",
                  items: [
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
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "2025를 보는 나의 손님이",
                  items: [
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
