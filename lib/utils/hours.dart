import 'package:schedule_calendar/data/model/event_time.dart';

List<EventTime> hours() {
  final hours = <EventTime>[];

  for (int index = 8; index <= 20; index++) {
    final hour = EventTime(hour: index, minute: 0);
    hours.add(hour);
  }

  return hours;
}
