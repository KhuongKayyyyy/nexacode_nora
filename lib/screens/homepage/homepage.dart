import 'package:flutter/material.dart';

import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppBubbleChat.dart';
import 'package:nora/components/AppButtonWithTag.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/screens/homepage/components/day_count_item.dart';
import 'package:nora/screens/homepage/components/home_navigation_section.dart';
import 'package:nora/screens/homepage/components/function_secion.dart';

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
                AppButtonWithTag(text: "2025 신년 운세", tagType: TagType.newTag),
                16.y,
                FunctionSection(
                  title: "오늘의 운세",
                  functions: [
                    {
                      'text': '솔로 탈출 시기',
                      'tagType': TagType.newTag,
                      'onTap': () {},
                    },
                    {
                      'text': '남은 연애 횟수',
                      'tagType': TagType.hot,
                      'onTap': () {},
                    },
                    {'text': '사주로 보는 궁합', 'tagType': null, 'onTap': () {}},
                    {'text': '사주로 보는 심화 재회운', 'tagType': null, 'onTap': () {}},
                    {'text': '절대 결혼하면 안되는 상대', 'tagType': null, 'onTap': () {}},
                    {'text': '나의 도화살 찾기', 'tagType': null, 'onTap': () {}},
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "다른 고민 상담",
                  functions: [
                    {'text': '월급 시기 배정운', 'tagType': null, 'onTap': () {}},
                    {'text': '월급 시기 인간관계', 'tagType': null, 'onTap': () {}},
                    {'text': '월급 시기 재물운', 'tagType': null, 'onTap': () {}},
                    {'text': '월급 시기 건강운', 'tagType': null, 'onTap': () {}},
                    {'text': '월급 시기 목적달성', 'tagType': null, 'onTap': () {}},
                    {'text': '월급 시기 리더에 대한운', 'tagType': null, 'onTap': () {}},
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "타로 상담 소원 성취",
                  functions: [
                    {'text': '갑하 결혼', 'tagType': null, 'onTap': () {}},
                    {'text': '김 기업 적합성', 'tagType': null, 'onTap': () {}},
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "타로 상담 궁금하다",
                  functions: [
                    {'text': '해수한턴 시나리오', 'tagType': null, 'onTap': () {}},
                    {'text': '청신기능동', 'tagType': null, 'onTap': () {}},
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "다른 타로 궁금하다",
                  functions: [
                    {'text': '학교 따뜻함', 'tagType': null, 'onTap': () {}},
                    {'text': '한국적 색제현', 'tagType': null, 'onTap': () {}},
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "",
                  functions: [
                    {'text': '오늘 출한 기대값', 'tagType': null, 'onTap': () {}},
                    {'text': '오늘 기운 상태값', 'tagType': null, 'onTap': () {}},
                    {'text': '오늘 진 신체값', 'tagType': null, 'onTap': () {}},
                    {'text': '오늘 가치 인간관계', 'tagType': null, 'onTap': () {}},
                    {'text': '요즘 지새생약을', 'tagType': null, 'onTap': () {}},
                    {'text': '지금 돈숙님 해답', 'tagType': null, 'onTap': () {}},
                    {'text': '돈기호와 상정 재세', 'tagType': null, 'onTap': () {}},
                    {'text': '돈기호와 수채 왕해생', 'tagType': null, 'onTap': () {}},
                    {'text': '학끊 터터 가냄면', 'tagType': null, 'onTap': () {}},
                    {'text': '가시망 공 가냄서 설굽', 'tagType': null, 'onTap': () {}},
                    {'text': '칠문양 더 말냄세', 'tagType': null, 'onTap': () {}},
                    {'text': '내궁 향 세게 가면', 'tagType': null, 'onTap': () {}},
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
                AppButtonWithTag(text: "2025 친구와의 궁합", tagType: TagType.event),
                16.y,
                FunctionSection(
                  title: "2025 신년운세 무료",
                  functions: [
                    {'text': '무료 택 년운', 'tagType': null, 'onTap': () {}},
                    {'text': '무료 택 월 운세', 'tagType': null, 'onTap': () {}},
                    {'text': '무료 택운세', 'tagType': null, 'onTap': () {}},
                    {'text': '신년 택 월운세', 'tagType': null, 'onTap': () {}},
                    {'text': '내년 택 월운세', 'tagType': null, 'onTap': () {}},
                    {'text': '신년 택 운세', 'tagType': null, 'onTap': () {}},
                    {'text': '신년 택운세', 'tagType': null, 'onTap': () {}},
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "신년 택",
                  functions: [
                    {'text': '신년 택운세', 'tagType': null, 'onTap': () {}},
                    {'text': '신년 택 운세', 'tagType': null, 'onTap': () {}},
                    {'text': '신년 택월운세', 'tagType': null, 'onTap': () {}},
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "신년운세 질문 입니다",
                  functions: [
                    {'text': 'YES/NO 타로', 'tagType': null, 'onTap': () {}},
                    {'text': '신년 택 월운세', 'tagType': null, 'onTap': () {}},
                    {'text': '신년 택운세', 'tagType': null, 'onTap': () {}},
                  ],
                ),
                16.y,
                FunctionSection(
                  title: "2025를 보는 나의 손님이",
                  functions: [
                    {'text': '먼저 택 구상하기', 'tagType': null, 'onTap': () {}},
                    {'text': '필받 광 용', 'tagType': null, 'onTap': () {}},
                    {'text': '제목나랜과 특수 행복하기', 'tagType': null, 'onTap': () {}},
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
