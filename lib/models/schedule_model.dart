import 'package:intl/intl.dart';
import 'package:schedule_calendar/constants/constants.dart';

class ScheduleModel {
  final String? id;
  final String notes;
  final DateTime date;
  final Duration startTime;
  final Duration endTime;
  final String eventId;
  final int durationByMinutes;

  ScheduleModel({
    this.id,
    required this.notes,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.eventId,
    required this.durationByMinutes,
  });

  factory ScheduleModel.fromJson(Map<String, dynamic> json) {
    final startTime = json["fields"]["startTime"].split(":");
    final endTime = json["fields"]["endTime"].split(":");

    return ScheduleModel(
      id: json['id'],
      notes: json["fields"]["notes"],
      date: DateTime.parse(json["fields"]["date"]),
      startTime: Duration(hours: int.parse(startTime.first), minutes: int.parse(startTime.last)),
      endTime: Duration(hours: int.parse(endTime.first), minutes: int.parse(endTime.last)),
      eventId: json["fields"]["eventId"].first,
      durationByMinutes: json["fields"]["durationByMinutes (from eventId)"].first,
    );
  }

  Map<String, dynamic> toJson() => {
        "notes": notes,
        "date": DateFormat(dateFormat).format(date),
        "startTime": startTime,
        "endTime": endTime,
        "eventId": [eventId],
      };
}
