import 'package:flutter/material.dart';

class TodayFortune extends StatefulWidget {
  const TodayFortune({super.key});

  @override
  State<TodayFortune> createState() => _TodayFortuneState();
}

class _TodayFortuneState extends State<TodayFortune> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Today Fortune')),
      body: Center(
        child: Text('오늘의 운세 페이지', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
