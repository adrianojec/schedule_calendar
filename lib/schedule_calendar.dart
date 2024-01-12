import 'package:flutter/material.dart';
import 'package:schedule_calendar/utils/theme.dart';
import 'package:schedule_calendar/routes/route_manager.dart';
import 'package:schedule_calendar/screens/screens.dart';

class ScheduleCalendar extends StatelessWidget {
  const ScheduleCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: scheduleCalendarTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      onGenerateRoute: RouteManager.generateRoute,
      home: const HomeScreen(),
    );
  }
}
