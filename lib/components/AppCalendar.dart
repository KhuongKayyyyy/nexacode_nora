import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AppCalendar extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime? selectedDay;
  final Function(DateTime selectedDay, DateTime focusedDay) onDaySelected;

  const AppCalendar({
    super.key,
    required this.focusedDay,
    required this.selectedDay,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      focusedDay: focusedDay,
      selectedDayPredicate: (day) => isSameDay(selectedDay, day),
      onDaySelected: onDaySelected,
      calendarFormat: CalendarFormat.month,
      startingDayOfWeek: StartingDayOfWeek.monday,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
      calendarStyle: CalendarStyle(
        outsideDaysVisible: false,
        weekendTextStyle: TextStyle(color: Colors.grey),
        defaultTextStyle: TextStyle(color: Colors.grey),
        cellMargin: const EdgeInsets.all(4),
        cellPadding: EdgeInsets.zero,
        defaultDecoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        weekendDecoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        selectedDecoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        todayDecoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      calendarBuilders: CalendarBuilders(
        dowBuilder: (context, day) {
          const koreanDays = ['월', '화', '수', '목', '금', '토', '일'];
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
          bool hasDiary = day.day == 19;
          return Container(
            margin: const EdgeInsets.all(4),
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
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                  ),
                  if (hasDiary)
                    const Text('😊', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
          );
        },
        selectedBuilder: (context, day, focusedDay) {
          bool hasDiary = day.day == 19;
          return Container(
            margin: const EdgeInsets.all(4),
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
                    const Text('😊', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
          );
        },
        todayBuilder: (context, day, focusedDay) {
          bool hasDiary = day.day == 19;
          return Container(
            margin: const EdgeInsets.all(4),
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
                    const Text('😊', style: TextStyle(fontSize: 30)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
