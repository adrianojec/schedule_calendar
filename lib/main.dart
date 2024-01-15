import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:schedule_calendar/schedule_calendar.dart';

void main() {
  Future.microtask(() async => await dotenv.load(fileName: '.env'));

  runApp(const ScheduleCalendar());
}
