import 'package:flutter/material.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/constants/ColorConstants.dart';

class TodayFortuneResult extends StatefulWidget {
  const TodayFortuneResult({super.key});

  @override
  State<TodayFortuneResult> createState() => _TodayFortuneResultState();
}

class _TodayFortuneResultState extends State<TodayFortuneResult> {
  final PageController _pageController = PageController();
  int currentStep = 0;
  int totalSteps = 11;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(14, 17, 47, 1),
      body: Column(
        children: [
          _buildHeadingSection(),
          Expanded(
            child: PageView(
              scrollDirection: Axis.vertical,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentStep = index;
                });
              },
              children: [
                _buildResultLanding(),
                _buildTodayLuckyScore(),
                _buildHarumiResult(),
                _buildIljinResult(),
                _buildTodayThing(title: "오늘은 이런 조심해"),
                _buildLuckMessage(
                  title: "재물운",
                  content:
                      "오늘은 금전적으로 새로운 기회를 잡을 수 있는 날이야.\n평소 망설였던 투자나 새로운 사업 아이디어가 있다면,\n용범 도전해보는 것도 나쁘지 않을 것 같아. 물론 무모한\n모험보다는 철저한 계획이 뒷받침 되어야 함은 당연하\n고 큰 돈을 쓰는건 피해야겠지만, 작은 모험은 큰 수익을\n가져다줄 수도 있어. 새로운 기회를 잡샐보고, 적당한\n판단을 내려보자",
                ),
                _buildLuckMessage(
                  title: "애정운",
                  content:
                      "오늘은 금전적으로 새로운 기회를 잡을 수 있는 날이야.\n평소 망설였던 투자나 새로운 사업 아이디어가 있다면,\n용범 도전해보는 것도 나쁘지 않을 것 같아. 물론 무모한\n모험보다는 철저한 계획이 뒷받침 되어야 함은 당연하\n고 큰 돈을 쓰는건 피해야겠지만, 작은 모험은 큰 수익을\n가져다줄 수도 있어. 새로운 기회를 잡샐보고, 적당한\n판단을 내려보자",
                ),
                _buildLuckMessage(
                  title: "건강운",
                  content:
                      "오늘은 금전적으로 새로운 기회를 잡을 수 있는 날이야.\n평소 망설였던 투자나 새로운 사업 아이디어가 있다면,\n용범 도전해보는 것도 나쁘지 않을 것 같아. 물론 무모한\n모험보다는 철저한 계획이 뒷받침 되어야 함은 당연하\n고 큰 돈을 쓰는건 피해야겠지만, 작은 모험은 큰 수익을\n가져다줄 수도 있어. 새로운 기회를 잡샐보고, 적당한\n판단을 내려보자",
                ),
                _buildLuckMessage(
                  title: "업무운",
                  content:
                      "오늘은 금전적으로 새로운 기회를 잡을 수 있는 날이야.\n평소 망설였던 투자나 새로운 사업 아이디어가 있다면,\n용범 도전해보는 것도 나쁘지 않을 것 같아. 물론 무모한\n모험보다는 철저한 계획이 뒷받침 되어야 함은 당연하\n고 큰 돈을 쓰는건 피해야겠지만, 작은 모험은 큰 수익을\n가져다줄 수도 있어. 새로운 기회를 잡샐보고, 적당한\n판단을 내려보자",
                ),
                _buildTodayThing(title: "오늘의 행운"),
                _buildEndingSection(),
              ],
            ),
          ),
          _buildBottomIndicator(),
        ],
      ),
    );
  }

  Widget _buildHeadingSection() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 16,
        bottom: 16,
        left: 24,
        right: 24,
      ),
      child: Column(
        children: [
          Row(
            children: List.generate(totalSteps, (index) {
              return Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  height: 12,
                  decoration: BoxDecoration(
                    color: index == currentStep
                        ? Colors.white
                        : Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              );
            }),
          ),
          16.y,

          // Date and title section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppText(
                text: "2025. 06. 13. (금) 오늘의 운세",
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Color(0xFF00E5CC),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomIndicator() {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom + 16,
        top: 16,
        left: 24,
        right: 24,
      ),
      color: Color.fromRGBO(14, 17, 47, 1),
      child: currentStep < totalSteps - 1
          ? GestureDetector(
              onTap: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText(
                      text: "다음",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    8.x,
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 16,
                    ),
                  ],
                ),
              ),
            )
          : SizedBox.shrink(),
    );
  }

  Widget _buildEndingSection() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFF00E5CC),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            40.y,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  AppText(
                    text: "오늘의 사주풀이는\n여기까지!",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  ),
                  16.y,
                  AppText(
                    text: "오늘의 운세가 마음에 들었길 바라!",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                  ),
                  32.y,
                  Row(
                    children: [
                      Expanded(
                        child: AppButton(
                          text: "내용 다시 볼래",
                          onTap: () {
                            // Scroll back to first page
                            _pageController.animateToPage(
                              0,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                          color: Color(0xFFF5F5F5),
                          textColor: Colors.black,
                        ),
                      ),
                      12.x,
                      Expanded(
                        child: AppButton(
                          text: "나가기",
                          onTap: () {
                            Navigator.pop(context);
                          },
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLuckMessage({required String title, required String content}) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Color(0xFF00E5CC),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                SizedBox(width: 8),
                AppText(
                  text: title,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 24),
            AppText(
              text: "한줄 조언",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ColorConstants.color007aff,
            ),
            SizedBox(height: 16),
            AppText(
              text: "모험심을 발휘해볼까?",
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.all(24),
                child: AppText(
                  text: content,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  Widget _buildTodayThing({required String title}) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        children: [
          Spacer(flex: 1),
          AppText(
            text: title,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24),
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Background cards positioned around
                Positioned(
                  top: 0,
                  left: 100,
                  child: _buildLuckyThingItem(-0.15, "돌다리까", Color(0xFFFFF4C4)),
                ),
                Positioned(
                  top: 50,
                  right: 80,
                  child: _buildLuckyThingItem(0.15, "연두색", Color(0xFFB8E6FF)),
                ),
                Positioned(
                  bottom: 50,
                  left: 100,
                  child: _buildLuckyThingItem(-0.1, "시엽", Colors.white),
                ),
                Positioned(
                  bottom: 0,
                  right: 80,
                  child: _buildLuckyThingItem(0.1, "조심할 사람", Color(0xFFE8C5FF)),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }

  Widget _buildLuckyThingItem(double angle, String text, Color color) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        width: 120,
        height: 140,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: AppText(
            text: text,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget _buildResultLanding() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xFF00E5CC),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                AppText(
                  text: "하루이!",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 16),
                AppText(
                  text: "오늘 운신게 있는지 물어\n끄끄읗 재미해봐",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                AppText(
                  text: "심주를 분석하려면 많은 것 것들이 활용하여",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildTodayLuckyScore() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Color(0xFF00E5CC),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(height: 16),
              AppText(
                text: "하루이의 오늘의 운세점수",
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 8),
              AppText(
                textAlign: TextAlign.center,
                text: "80 점",
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 8),
              AppText(
                textAlign: TextAlign.center,
                text: "1996년 2월 1일 | 무인일주",
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHarumiResult() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xFF00E5CC),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(height: 24),
            AppText(
              text: "하루이의 일주",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            SizedBox(height: 8),
            AppText(
              textAlign: TextAlign.center,
              text: "무진",
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            SizedBox(height: 24),
            AppText(
              text: "하루이의 일인",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            SizedBox(height: 8),
            AppText(
              textAlign: TextAlign.center,
              text: "계축",
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            SizedBox(height: 4),
            AppText(
              textAlign: TextAlign.center,
              text: "(丑土)",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIljinResult() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              text: "오늘의 일진 : 계축(癸丑)",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            AppText(
              text: "한줄 조언",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            SizedBox(height: 16),
            AppText(
              text: "실수를 방지하려면\n꼼꼼한 점검이 필요해",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            AppText(
              text:
                  "오늘의 일정과 계획을 다시 한 번 확인해보는 것이\n중요해. 놓친 부분이 있다면 재 정리하고 수정해봐.\n꼼꼼한 점검이 실수를 줄이는 데 큰 도움이 될거야.",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
