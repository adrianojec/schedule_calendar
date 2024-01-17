import 'package:schedule_calendar/models/event_time.dart';

List<EventTime> hours() {
  final hours = <EventTime>[];

  for (int index = 8; index <= 20; index++) {
    final hour = EventTime(hour: index, minute: 0);
    hours.add(hour);
  }

  return hours;
}

List<EventTime> hoursWith30minutes() {
  final hours = <EventTime>[];

  for (int index = 8; index <= 20; index++) {
    final hour = EventTime(hour: index, minute: 0);
    final hourWith30 = EventTime(hour: index, minute: 30);
    hours.addAll([hour, hourWith30]);
  }

  return hours;
}
