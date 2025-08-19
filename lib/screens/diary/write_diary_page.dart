import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';

class WriteDiaryPage extends StatefulWidget {
  final DateTime selectedDay;
  const WriteDiaryPage({super.key, required this.selectedDay});

  @override
  State<WriteDiaryPage> createState() => _WriteDiaryPageState();
}

class _WriteDiaryPageState extends State<WriteDiaryPage> {
  Map<String, String> userMood = {};
  String harumiMessage = "어떤 일이 있었는지 알려줄 수 있을까?\n하루미가 오늘 하루 어땠는지 들려줄 수 있을까?";
  bool showMoodMessage = false;
  bool showWriteDiary = false;
  bool showHarumiMessage = false;
  String userDiaryText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          text: DateFormat('yyyy.MM.dd').format(widget.selectedDay),
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        centerTitle: false,
      ),
      body: _build(context),
    );
  }

  Widget _build(BuildContext context) {
    if (userMood.isEmpty) return _buildMoodSelectStep();
    if (!showMoodMessage) return _buildMoodMessage();
    if (showHarumiMessage) return _buildHarumiMessage();
    if (!showWriteDiary) return _buildWriteDiaryStep();
    return _buildWriteDiaryStep();
  }

  Widget _buildWriteDiaryStep() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Mood display container
          Center(
            child: _buidlMoodItem(
              title: userMood['mood'] ?? '',
              icon: userMood['icon'] ?? '',
              onTap: () {},
            ),
          ),
          32.y,
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              maxLines: null,
              expands: true,
              textAlignVertical: TextAlignVertical.top,
              onChanged: (value) {
                setState(() {
                  userDiaryText = value;
                });
              },
              decoration: InputDecoration(
                hintText: '내 기분은...',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 254, 202, 202),
                  fontSize: 16,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(20),
              ),
              style: TextStyle(fontSize: 16, color: Colors.black, height: 1.5),
            ),
          ),
          const Spacer(),
          AppButton(
            text: "작성 완료",
            width: double.infinity,
            onTap: () {
              setState(() {
                showHarumiMessage = true;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHarumiMessage() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          // Mood display container
          Center(
            child: _buidlMoodItem(
              title: userMood['mood'] ?? '',
              icon: userMood['icon'] ?? '',
              onTap: () {},
            ),
          ),
          24.y,
          // Message container
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: userDiaryText.isEmpty
                      ? '아무것도 작성하지 않았지만 기분은 좋아야!'
                      : userDiaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
                4.y,
                AppText(
                  text:
                      '${DateFormat('yyyy. MM. dd. (E) HH:mm').format(DateTime.now())} 작성',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),
          24.y,
          Divider(color: Colors.grey[300], thickness: 1),
          24.y,
          // Harumi message container
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: Color(0xFF5BCCC9),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    8.x,
                    AppText(
                      text: '하루미의 댓글',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ],
                ),
                12.y,
                AppText(
                  text: userDiaryText.isEmpty
                      ? '무슨 일인지 안알려줘도구나!\n하지만 하루미가 기분이 좋다면 그것도 만족이야!\n힘들거나 좋지않은 감정이 어디든 나에게 이야기\n해줘 항상 들어줄게'
                      : '${userMood['mood']}라는 기분이구나!\n오늘 하루도 고생 많았어\n언제든 하루미에게 이야기해줘\n항상 들어줄게!',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 1.4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMoodMessage() {
    return Column(
      children: [
        AppPlaceHolder(width: double.infinity, height: 180),
        16.y,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: FutureBuilder(
            future: Future.delayed(Duration(seconds: 3)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  setState(() {
                    showMoodMessage = true;
                  });
                });
                return AppText(
                  text: harumiMessage,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                );
              } else {
                return AppText(
                  text: userMood['mood'] ?? '',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                );
              }
            },
          ),
        ),
        32.y,
        if (showMoodMessage)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: AppButton(
              text: "일기 작성하기",
              width: double.infinity,
              onTap: () {
                setState(() {
                  showWriteDiary = true;
                });
              },
            ),
          ),
      ],
    );
  }

  Widget _buildMoodSelectStep() {
    return Column(
      children: [
        AppPlaceHolder(width: double.infinity, height: 180),
        16.y,
        AppText(
          text: '하루미 오늘 기분은 어때?',
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        16.y,
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 4,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          children: [
            _buidlMoodItem(
              title: '좋아',
              icon: '😊',
              onTap: () {
                setState(() {
                  userMood = {'icon': '😊', 'mood': '좋아'};
                });
              },
            ),
            _buidlMoodItem(
              title: '슬퍼',
              icon: '😭',
              onTap: () {
                setState(() {
                  userMood = {'icon': '😭', 'mood': '슬퍼'};
                });
              },
            ),
            _buidlMoodItem(
              title: '짜증나',
              icon: '😡',
              onTap: () {
                setState(() {
                  userMood = {'icon': '😡', 'mood': '짜증나'};
                });
              },
            ),
            _buidlMoodItem(
              title: '즐거워',
              icon: '😄',
              onTap: () {
                setState(() {
                  userMood = {'icon': '😄', 'mood': '즐거워'};
                });
              },
            ),
            _buidlMoodItem(
              title: '나쁘지않아',
              icon: '😑',
              onTap: () {
                setState(() {
                  userMood = {'icon': '😑', 'mood': '나쁘지않아'};
                });
              },
            ),
            _buidlMoodItem(
              title: '놀랐어',
              icon: '🤭',
              onTap: () {
                setState(() {
                  userMood = {'icon': '🤭', 'mood': '놀랐어'};
                });
              },
            ),
            _buidlMoodItem(
              title: '우울해',
              icon: '😟',
              onTap: () {
                setState(() {
                  userMood = {'icon': '😟', 'mood': '우울해'};
                });
              },
            ),
            _buidlMoodItem(
              title: '잘 모르겠어',
              icon: '🙄',
              onTap: () {
                setState(() {
                  userMood = {'icon': '🙄', 'mood': '잘 모르겠어'};
                });
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buidlMoodItem({
    required String title,
    required String icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            AppText(text: icon, fontSize: 24),
            10.y,
            AppText(text: title, fontSize: 14),
          ],
        ),
      ),
    );
  }
}
