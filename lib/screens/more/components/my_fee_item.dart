import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';

class MyFeeItem extends StatelessWidget {
  const MyFeeItem({super.key});

  @override
  Widget build(BuildContext context) {
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
          AppButton(
            width: 57,
            height: 33,
            text: "충전",
            onTap: () => Get.toNamed(RouteName.moreFee, id: NavIds.more),
          ),
        ],
      ),
    );
  }
}
