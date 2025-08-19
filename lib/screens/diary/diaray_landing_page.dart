import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppCalendar.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';

class DiarayLandingPage extends StatefulWidget {
  const DiarayLandingPage({super.key});

  @override
  State<DiarayLandingPage> createState() => _DiarayLandingPageState();
}

class _DiarayLandingPageState extends State<DiarayLandingPage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kToolbarHeight.y,
        AppPlaceHolder(width: double.infinity, height: 100),
        16.y,
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AppCalendar(
            focusedDay: _focusedDay,
            selectedDay: _selectedDay,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
          ),
        ),
        Spacer(),
        AppButton(
          text: '오늘의 일기 쓰러가기',
          onTap: () {
            if (_selectedDay != null) {
              Get.toNamed(
                RouteName.writeDiaryPage,
                arguments: _selectedDay,
                id: NavIds.diary,
              );
            } else {
              Get.snackbar('오늘의 일기 쓰러가기', '오늘의 일기를 쓰러가기 전에 날짜를 선택해주세요.');
            }
          },
        ),
        16.y,
      ],
    );
  }
}
