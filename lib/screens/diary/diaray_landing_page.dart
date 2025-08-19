import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/constants/NavIds.dart';
import 'package:nora/constants/RouteName.dart';
import 'package:table_calendar/table_calendar.dart';

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
        PlaceHolder(width: double.infinity, height: 100),
        16.y,
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            calendarFormat: CalendarFormat.month,
            startingDayOfWeek: StartingDayOfWeek.monday,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
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
