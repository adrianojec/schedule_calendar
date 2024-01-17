import 'package:intl/intl.dart';
import 'package:schedule_calendar/constants/constants.dart';
import 'package:schedule_calendar/models/models.dart';

class ScheduleModel {
  final String? id;
  final String notes;
  final DateTime date;
  final EventTime startTime;
  final EventTime endTime;
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

  factory ScheduleModel.fromJson(Map<String, dynamic> json) => ScheduleModel(
        id: json['id'],
        notes: json["fields"]["notes"],
        date: DateTime.parse(json["fields"]["date"]),
        startTime: EventTime.fromString(json["fields"]["startTime"]),
        endTime: EventTime.fromString(json["fields"]["endTime"]),
        eventId: json["fields"]["eventId"].first,
        durationByMinutes: json["fields"]["durationByMinutes (from eventId)"].first,
      );

  Map<String, dynamic> toJson() => {
        "notes": notes,
        "date": DateFormat(dateFormat).format(date),
        "startTime": startTime,
        "endTime": endTime,
        "eventId": [eventId],
      };
}
