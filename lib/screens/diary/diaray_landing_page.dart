import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              weekendTextStyle: TextStyle(color: Colors.grey[600]),
              defaultTextStyle: TextStyle(color: Colors.grey[600]),
              cellMargin: EdgeInsets.all(4),
              cellPadding: EdgeInsets.zero,
              defaultDecoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              weekendDecoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              selectedDecoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              todayDecoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            calendarBuilders: CalendarBuilders(
              dowBuilder: (context, day) {
                final List<String> koreanDays = [
                  '월',
                  '화',
                  '수',
                  '목',
                  '금',
                  '토',
                  '일',
                ];
                final dayIndex = (day.weekday % 7);
                final text = koreanDays[dayIndex];

                return Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              },
              defaultBuilder: (context, day, focusedDay) {
                // Check if this day has a diary entry (for demonstration, showing emoji on day 19)
                bool hasDiary = day.day == 19;

                return Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${day.day}',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          ),
                        ),
                        if (hasDiary)
                          Text('😊', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                );
              },
              selectedBuilder: (context, day, focusedDay) {
                bool hasDiary = day.day == 19;

                return Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${day.day}',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (hasDiary)
                          Text('😊', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                );
              },
              todayBuilder: (context, day, focusedDay) {
                bool hasDiary = day.day == 19;

                return Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: hasDiary ? Colors.white : Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (!hasDiary)
                          Text(
                            '${day.day}',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        if (hasDiary)
                          Text('😊', style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ),
                );
              },
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
