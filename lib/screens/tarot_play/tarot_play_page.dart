import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppBubbleChat.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/constants/AppFont.dart';
import 'package:nora/screens/tarot_play/components/horoscope_rating_section.dart';

class TarotPlayPage extends StatefulWidget {
  const TarotPlayPage({super.key});

  @override
  State<TarotPlayPage> createState() => _TarotPlayPageState();
}

class _TarotPlayPageState extends State<TarotPlayPage> {
  int? selectedCardIndex;
  bool showResult = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
          body: selectedCardIndex == null
              ? _buildCardSelectionView()
              : showResult
              ? SingleChildScrollView(child: _buildPlayResultView())
              : _buildCardSelectedView(),
          bottomSheet: _buildBottomSheet(),
        ),
      ),
    );
  }

  Widget _buildBottomSheet() {
    if (selectedCardIndex == null) {
      return SizedBox.shrink();
    } else if (!showResult) {
      return Padding(
        padding: EdgeInsets.only(top: 16),
        child: AppButton(
          text: "운세 보기",
          onTap: () {
            setState(() {
              showResult = true;
            });
          },
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.only(top: 16),
        child: AppButton(text: "간직하기", onTap: _onTapSaveButton),
      );
    }
  }

  void _onTapSaveButton() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: AppText(
              text: "운세 보관함에 저장되었어요",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              textAlign: TextAlign.center,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: AppText(
                text: "확인",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPlayResultView() {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            AppBubbleChat(
              backgroundColor: Colors.white,
              child: Column(
                children: [
                  AppText(
                    text: '하루미!\n오늘은 네 놀라운 재능으로\n모든 것을 가능하게 만들거야!',
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: AppFont.Ownglyph_ryuttung,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  AppText(
                    text: '창의력과 능력을 발휘하여\n현실을 변화시켜봐!',
                    fontSize: 20,
                    fontFamily: AppFont.Ownglyph_ryuttung,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                    textAlign: TextAlign.center,
                    height: 1.5,
                  ),
                ],
              ),
            ),
            16.y,
            AppPlaceHolder(width: double.infinity, height: 150),
            16.y,
            _buildMessageContent(),
            48.y,
            HoroscopeRatingSection(),
            100.y,
          ],
        ),
      ),
    );
  }

  Widget _buildMessageContent() {
    return Column(
      children: [
        AppText(text: "2025.6.13 오늘의 타로 운세"),
        16.y,
        AppText(text: "<마술사>"),
        16.y,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTagButton('창조력'),
            5.x,
            _buildTagButton('의지'),
            5.x,
            _buildTagButton('능력자'),
            5.x,
            _buildTagButton('기술'),
          ],
        ),
        16.y,
        AppText(
          text:
              "오늘은 당긴의 창의성과 능력이 빛을 발하는 날입니다.\n\n마법사 카드는 자원을 사용하여 원하는 결과를 나타내는 능력을 상징해요. 당신의 기술, 지혜, 그리고 자신감이 합쳐져 어떤 상황이든 유리하게 만들 수 있는 재능을 의미합니다. 지금 당신에겐 필요한 모든 것이 갖춰져 있으니, 이를 활용해 목표를 향해 나아가세요.\n\n자신의 내면과 외부 세계 사이에서 균형을 잘 맞추며, 현실을 마법처럼 변화시키는 데 주저하지마세요.단, 마법사의 능력을 현명하고 윤리적으로 사용하는 것이 중요해요. 당신의 행동과 선택이 주변에 어떤 영향을 미칠지 항상 고려하며 나아가야합니다.",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          height: 1.5,
        ),
      ],
    );
  }

  Widget _buildTagButton(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: AppText(text: text),
    );
  }

  Widget _buildCardSelectionView() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          40.y,
          // Top single card
          Container(
            width: 80,
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xFF00E5CC),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          24.y,
          AppText(
            text: '카드를 한장 뽑아봐!',
            fontFamily: AppFont.Ownglyph_ryuttung,

            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          40.y,
          // Card grid (3 rows x 4 columns)
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.67, // Width to height ratio for cards
              ),
              itemCount: 12,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCardIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF00E5CC),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                );
              },
            ),
          ),
          40.y,
        ],
      ),
    );
  }

  Widget _buildCardSelectedView() {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Large selected card
            AppPlaceHolder(width: 240, height: 240),
            40.y,
            // Message based on selected card
            AppText(
              text: _getCardMessage(selectedCardIndex!),
              fontSize: 28,
              fontFamily: AppFont.Ownglyph_ryuttung,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  String _getCardMessage(int index) {
    switch (index) {
      case 0:
        return '하루 종일\n좋은 일만이!';
      case 1:
        return '오늘은\n조금 쉬어가자';
      case 2:
        return '뭐든 도전할 수\n있는 하루';
      case 3:
        return '오늘은 사람과의\n만남이 좋아!';
      case 4:
        return '차분 차분 천천히\n하면 좋을 것 같아';
      default:
        return '오늘은 좋은 하루\n될 것 같아!';
    }
  }
}
