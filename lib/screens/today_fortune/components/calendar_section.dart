import 'package:flutter/material.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppCalendar.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';

class CalendarSection extends StatefulWidget {
  const CalendarSection({super.key});

  @override
  State<CalendarSection> createState() => _CalendarSectionState();
}

class _CalendarSectionState extends State<CalendarSection> {
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
      this.focusedDay = focusedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          AppPlaceHolder(width: double.infinity, height: 180),
          16.y,
          AppCalendar(
            focusedDay: focusedDay,
            selectedDay: selectedDay,
            onDaySelected: onDaySelected,
          ),
          SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          AppText(
                            text: '6월 13일 운세 점수 45점',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          Spacer(),
                          AppPlaceHolder(width: 24, height: 24),
                        ],
                      ),
                      SizedBox(height: 8),
                      AppText(
                        text: '하루미, 뭔가 놓친 것이 있을지 몰라. 꼼꼼히 체크해봐',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
