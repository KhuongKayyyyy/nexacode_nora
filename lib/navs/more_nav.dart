import 'package:flutter/material.dart';

class MoreNav extends StatelessWidget {
  const MoreNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('더보기')),
      body: Center(
        child: Text('더보기 페이지', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
