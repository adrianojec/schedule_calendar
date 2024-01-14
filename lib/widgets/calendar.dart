import 'package:flutter/material.dart';
import 'package:schedule_calendar/config/calendar_config.dart';
import 'package:schedule_calendar/utils/utils.dart';
import 'package:table_calendar/table_calendar.dart';

const double _daysOfWeekHeight = 20.0;
const double _rowHeight = 60.0;

class Calendar extends StatelessWidget {
  const Calendar({
    this.onDaySelected,
    super.key,
  });

  final OnDaySelected? onDaySelected;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final textTheme = context.appTheme.textTheme;
    final config = CalendarConfig(textTheme);

    return TableCalendar(
      focusedDay: now,
      firstDay: now,
      lastDay: now.add(30.year),
      onDaySelected: onDaySelected,
      headerStyle: config.headerStyle,
      startingDayOfWeek: StartingDayOfWeek.monday,
      daysOfWeekStyle: config.daysOfWeekStyle,
      daysOfWeekHeight: _daysOfWeekHeight,
      rowHeight: _rowHeight,
      calendarStyle: config.calendarStyle,
    );
  }
}
