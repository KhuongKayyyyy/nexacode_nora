import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';

class TodayLuckBrief extends StatelessWidget {
  final String? date;
  final String? luck;
  final String? message;
  const TodayLuckBrief({super.key, this.date, this.luck, this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildBriefScore(),
        _buildScoreGrid(),
        Row(
          children: [
            Expanded(child: _buildWaringThingItem()),
            Expanded(child: _buildWaringThingItem()),
          ],
        ),
      ],
    );
  }

  Widget _buildWaringThingItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: '조심할',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                    AppText(
                      text: '아이템',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.grey[600],
                  size: 24,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE5B3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AppText(
                    text: '동태찌개',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AppText(
                    text: '연두색',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Color(0xFFB3D9FF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AppText(
                    text: '식당',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Color(0xFFE5D0FF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: AppText(
              text: '조심할 시간 : ㅊ님',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScoreGrid() {
    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: [
        _buildScoreItem(),
        _buildScoreItem(),
        _buildScoreItem(),
        _buildScoreItem(),
      ],
    );
  }

  Widget _buildScoreItem() {
    return Container(
      padding: EdgeInsets.all(16),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppPlaceHolder(width: 40, height: 40),
              _buildArrowButton(true),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(text: '재물운', fontSize: 14, color: Colors.white),
              AppText(
                text: '45점',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildBriefScore() {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: date ?? '6월 13일 계축일',
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
                SizedBox(height: 8),
                AppText(
                  text: luck ?? '오늘의 운세점수 45점',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                SizedBox(height: 8),
                AppText(
                  text: message ?? '하루미, 뭔가 놓친 것이 있을지 몰라. 꼼꼼히 체...',
                  fontSize: 14,
                  color: Colors.grey[700],
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          _buildArrowButton(false),
        ],
      ),
    );
  }

  Widget _buildArrowButton(bool isReverse) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: !isReverse ? Colors.grey[600] : Colors.white,
      ),
    );
  }
}
