import 'package:flutter/material.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/AppTextField.dart';
import 'package:nora/constants/ColorConstants.dart';

class MoreCouponPage extends StatefulWidget {
  const MoreCouponPage({super.key});

  @override
  State<MoreCouponPage> createState() => _MoreCouponPageState();
}

class _MoreCouponPageState extends State<MoreCouponPage> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: AppText(text: "내 쿠폰", fontSize: 16, fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
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
                    text: "내 쿠폰",
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
                    text: "사용한 쿠폰",
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
      return Column(
        children: [
          _buildAddCouponSection(),
          10.y,
          Expanded(child: _buildCouponList()),
        ],
      );
    } else {
      return _buildEmptyUsedCoupons();
    }
  }

  Widget _buildAddCouponSection() {
    return Container(
      height: 100,
      width: 400,
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(child: AppTextField(hintText: "쿠폰 번호를 입력해주세요")),
          SizedBox(width: 12),
          SizedBox(
            width: 80,
            height: 48,
            child: AppButton(text: "등록", onTap: () {}, width: 80, margin: 0),
          ),
        ],
      ),
    );
  }

  Widget _buildCouponList() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16),
      itemCount: 2,
      itemBuilder: (context, index) {
        if (index == 0) {
          return _buildCouponItem(
            "30%",
            "신규 가입 축하 쿠폰",
            "기간 만료 : 2025.06.18 8시 59분 23초",
          );
        } else {
          return _buildCouponItem(
            "10%",
            "신규 가입 축하 쿠폰",
            "기간 만료 : 2025.06.18 8시 59분 23초",
          );
        }
      },
    );
  }

  Widget _buildEmptyUsedCoupons() {
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

  Widget _buildCouponItem(String discount, String title, String expiry) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorConstants.color96, width: 1),
      ),
      child: Row(
        children: [
          AppText(
            text: discount,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF00E5CC),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(text: title, fontSize: 16, fontWeight: FontWeight.w500),
                SizedBox(height: 4),
                AppText(
                  text: expiry,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: ColorConstants.color96,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
