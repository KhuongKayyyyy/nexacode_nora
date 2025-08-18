import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/screens/more/components/my_fee_item.dart';

class MoreFeeHistory extends StatefulWidget {
  const MoreFeeHistory({super.key});

  @override
  State<MoreFeeHistory> createState() => _MoreFeeHistoryState();
}

class _MoreFeeHistoryState extends State<MoreFeeHistory> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: AppText(
          text: "젤리 내역",
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          MyFeeItem(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: AppText(
                    text: "결제관련 문의",
                    color: ColorConstants.btnDefaultColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          _buildTabSection(),
          Expanded(child: _buildContent()),
        ],
      ),
    );
  }

  Widget _buildTabSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => selectedTab = 0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: selectedTab == 0
                          ? Colors.black
                          : ColorConstants.color96,
                      width: selectedTab == 0 ? 2 : 1,
                    ),
                  ),
                ),
                child: Center(
                  child: AppText(
                    text: "충전 내역",
                    fontSize: 16,
                    fontWeight: selectedTab == 0
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: selectedTab == 0
                        ? Colors.black
                        : ColorConstants.color96,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => selectedTab = 1),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: selectedTab == 1
                          ? Colors.black
                          : ColorConstants.color96,
                      width: selectedTab == 1 ? 2 : 1,
                    ),
                  ),
                ),
                child: Center(
                  child: AppText(
                    text: "사용 내역",
                    fontSize: 16,
                    fontWeight: selectedTab == 1
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: selectedTab == 1
                        ? Colors.black
                        : ColorConstants.color96,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    if (selectedTab == 0) {
      return _buildHistoryList();
    } else {
      return _buildEmptyUsageHistory();
    }
  }

  Widget _buildHistoryList() {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: 5,
      itemBuilder: (context, index) {
        return _buildHistoryItem();
      },
    );
  }

  Widget _buildEmptyUsageHistory() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFF00E5CC),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(height: 20),
          AppText(
            text: "아직 내역이 없어요",
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: ColorConstants.color96,
          ),
        ],
      ),
    );
  }

  Widget _buildHistoryItem() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: ColorConstants.color96, width: 1),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "젤리(광고)",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 4),
              AppText(
                text: "2025년 6월 18일 11:02",
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: ColorConstants.color96,
              ),
            ],
          ),
          Spacer(),
          AppText(text: "1 젤리", fontSize: 16, fontWeight: FontWeight.bold),
        ],
      ),
    );
  }
}
