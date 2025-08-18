import 'package:flutter/material.dart';

class DiaryNav extends StatelessWidget {
  const DiaryNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('일기장')),
      body: Center(
        child: Text('일기장 페이지', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
