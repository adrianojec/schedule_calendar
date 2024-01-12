import 'package:schedule_calendar/utils/enums.dart';

class ScheduleEvent {
  final String imageUrl;
  final String title;
  final String userRole;
  final EventType type;
  final String description;
  final int duration;

  ScheduleEvent({
    required this.title,
    required this.userRole,
    required this.type,
    required this.description,
    required this.duration,
    required this.imageUrl,
  });
}
