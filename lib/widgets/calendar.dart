import 'package:flutter/material.dart';
import 'package:schedule_calendar/config/calendar_config.dart';
import 'package:schedule_calendar/constants/constants.dart';
import 'package:schedule_calendar/utils/utils.dart';
import 'package:table_calendar/table_calendar.dart';

const double _daysOfWeekHeight = 20.0;
const double _rowHeight = 60.0;

class Calendar extends StatelessWidget {
  const Calendar({
    this.onDaySelected,
    this.scheduledDates,
    super.key,
  });

  final OnDaySelected? onDaySelected;
  final List<String>? scheduledDates;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final textTheme = context.appTheme.textTheme;
    final config = CalendarConfig(textTheme);

    return TableCalendar(
      focusedDay: now,
      firstDay: now,
      lastDay: now.add(30.year),
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, focusedDay) {
          final schedules = _convertToUtc(scheduledDates ?? []);

          return schedules.contains(day)
              ? Center(
                  child: Text(
                    '${day.day}',
                    style: textTheme.labelLarge?.copyWith(
                      color: Palette.lushGreen,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                )
              : null;
        },
      ),
      onDaySelected: onDaySelected,
      headerStyle: config.headerStyle,
      startingDayOfWeek: StartingDayOfWeek.monday,
      daysOfWeekStyle: config.daysOfWeekStyle,
      daysOfWeekHeight: _daysOfWeekHeight,
      rowHeight: _rowHeight,
      calendarStyle: config.calendarStyle,
    );
  }

  List<DateTime> _convertToUtc(List<String> dates) {
    final schedules = dates.map((e) {
      final date = DateTime.parse(e);

      return DateTime.utc(date.year, date.month, date.day);
    });

    return schedules.toList();
  }
}
