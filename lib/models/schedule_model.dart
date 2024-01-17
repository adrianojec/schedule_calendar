import 'package:intl/intl.dart';
import 'package:schedule_calendar/models/models.dart';

class ScheduleModel {
  String? id;
  String notes;
  DateTime date;
  EventTime startTime;
  EventTime endTime;
  List<String> eventId;

  ScheduleModel({
    this.id,
    required this.notes,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.eventId,
  });

  factory ScheduleModel.fromJson(Map<String, dynamic> json) => ScheduleModel(
        id: json['id'],
        notes: json["fields"]["notes"],
        date: DateTime.parse(json["fields"]["date"]),
        startTime: EventTime.fromString(json["fields"]["startTime"]),
        endTime: EventTime.fromString(json["fields"]["endTime"]),
        eventId: List<String>.from(json["fields"]["eventId"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "notes": notes,
        "date": DateFormat('yyyy-mm-dd').format(date),
        "startTime": startTime,
        "endTime": endTime,
        "eventId": List<String>.from(eventId.map((x) => x)),
      };
}
