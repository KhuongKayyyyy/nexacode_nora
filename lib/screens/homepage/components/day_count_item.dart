import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';

class DayCountItem extends StatelessWidget {
  final String title;
  const DayCountItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: AppText(
        text: title,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}
