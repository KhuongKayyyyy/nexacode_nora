import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';

class HarumiHeadingSection extends StatelessWidget {
  const HarumiHeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          AppText(text: '하루미', fontSize: 24, fontWeight: FontWeight.bold),
          SizedBox(height: 8),
          AppText(text: '1996년 2월 1일생', fontSize: 16, color: Colors.grey[600]),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: _buildHaruiItem(title: '?', color: Colors.grey),
              ),
              SizedBox(width: 8),
              Expanded(
                child: _buildHaruiItem(title: '웃게', color: Colors.grey[800]!),
              ),
              SizedBox(width: 8),
              Expanded(
                child: _buildHaruiItem(title: '푸신', color: Colors.red),
              ),
              SizedBox(width: 8),
              Expanded(
                child: _buildHaruiItem(title: '웃게', color: Colors.grey[800]!),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: _buildHaruiItem(title: '?', color: Colors.grey),
              ),
              SizedBox(width: 8),
              Expanded(
                child: _buildHaruiItem(title: '꼬축', color: Colors.orange),
              ),
              SizedBox(width: 8),
              Expanded(
                child: _buildHaruiItem(title: '푸신', color: Colors.blue),
              ),
              SizedBox(width: 8),
              Expanded(
                child: _buildHaruiItem(title: 'Z을', color: Colors.green),
              ),
            ],
          ),
          SizedBox(height: 24),
          AppText(text: '제촉일주 남자', fontSize: 16, color: Colors.grey[600]),
        ],
      ),
    );
  }

  Widget _buildHaruiItem({required String title, required Color color}) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: color,
      ),
      child: Column(
        children: [AppText(text: title, fontSize: 16, color: Colors.white)],
      ),
    );
  }
}
