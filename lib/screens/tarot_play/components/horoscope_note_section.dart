import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';

class HoroscopeNoteSection extends StatelessWidget {
  const HoroscopeNoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: '데일리타로 | 오늘의 운세 | 타로점 | 일일운세',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey[600],
          ),
          SizedBox(height: 16),
          AppText(
            text: '이런 사람에게 도움돼요',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          SizedBox(height: 12),
          _buildNoteItem('1. 오늘 하루를 어떻게 보내야 할지 고민되는 사람'),
          _buildNoteItem('2. 일상의 영감을 얻고싶은 사람'),
          _buildNoteItem('3. 타로 카드 메세지가 궁금한 사람'),
          _buildNoteItem('4. 매일매일 새로운 운세를 받고싶은 사람'),
          SizedBox(height: 16),
          AppText(
            text:
                '당신을 위한 오늘의 타로 카드 메세지는 무엇일까요?\n매 순간이 소중한 당신, 매일 아침 타로 카드와 함께\n오늘의 운세를 확인해보는 건 어떨까요?',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
          SizedBox(height: 16),
          AppText(
            text: '지금 바로 하단 다음을 클릭 해보세요!',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget _buildNoteItem(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4),
      child: AppText(
        text: text,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }
}
