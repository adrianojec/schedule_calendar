import 'package:schedule_calendar/utils/utils.dart';

class ScheduleEvent {
  final String imageUrl;
  final String title;
  final String userRole;
  final EventType type;
  final String description;
  final int duration;
  final SessionType session;

  ScheduleEvent({
    required this.imageUrl,
    required this.title,
    required this.userRole,
    required this.type,
    required this.description,
    required this.duration,
    required this.session,
  });
}
