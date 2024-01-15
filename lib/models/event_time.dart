class EventTime {
  final int hour;
  final int minute;

  EventTime({
    required this.hour,
    required this.minute,
  });

  @override
  String toString() => '$hour:${minute}0';
}
