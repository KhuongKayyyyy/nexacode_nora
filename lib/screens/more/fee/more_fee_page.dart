import 'package:flutter/material.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/screens/horoscope/components/payment_option.dart';

class MoreFeePage extends StatelessWidget {
  const MoreFeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeadingSection(),
            _buildFeeItem(number: "200", price: "3,300"),
            _buildFeeItem(number: "200", price: "3,300"),
            _buildFeeItem(number: "200", price: "3,300"),
            _buildFeeItem(number: "200", price: "3,300"),
            _buildFeeItem(number: "200", price: "3,300"),
            _buildFeeItem(number: "200", price: "3,300"),
            _buildFeeItem(number: "200", price: "3,300"),
            _buildFeeItem(number: "200", price: "3,300"),
            _buildFeeItem(number: "200", price: "3,300"),
            _buildFeeItem(number: "200", price: "3,300"),
          ],
        ),
      ),
    );
  }

  Widget _buildFeeItem({String number = "200", String price = "3,300"}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Color(0xFF00E5CC),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(width: 12),
          AppText(
            text: "$number 젤리",
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          Spacer(),
          AppButton(text: "$price원", onTap: () {}, width: 80, height: 25),
        ],
      ),
    );
  }

  Widget _buildHeadingSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFF00E5CC),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(width: 12),
          AppText(text: "0 젤리", fontSize: 16, fontWeight: FontWeight.w500),
          Spacer(),
        ],
      ),
    );
  }
}
