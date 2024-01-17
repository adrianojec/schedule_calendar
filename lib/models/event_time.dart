class EventTime {
  final int hour;
  final int minute;

  EventTime({
    required this.hour,
    required this.minute,
  });

  factory EventTime.fromString(String time) {
    final times = time.split(":");
    final scheduleHour = int.tryParse(times[0]);
    final scheduleMinutes = int.tryParse(times[1]);

    return EventTime(
      hour: scheduleHour ?? 0,
      minute: scheduleMinutes ?? 0,
    );
  }

  @override
  String toString() => '$hour:${minute.toString().padRight(2, '0')}';
}
