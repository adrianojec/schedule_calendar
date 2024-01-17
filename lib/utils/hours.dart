import 'package:schedule_calendar/models/models.dart';
import 'package:schedule_calendar/utils/utils.dart';

List<Duration> hours(List<ScheduleModel> scheduledTimes) {
  final hours = <Duration>[];
  final hoursWithDuration = scheduledTimes
      .map((e) => {
            "startTime": e.startTime,
            "duration": e.durationByMinutes,
          })
      .toList();

  for (int index = 8; index <= 20; index++) {
    final hour = index.hours;
    final shouldSkip2Hours = hoursWithDuration.any((hr) => hr["startTime"] == hour && hr["duration"] == 120);
    final shouldSkip1Hours = hoursWithDuration.any((hr) => hr["startTime"] == hour && hr["duration"] == 60);
    final shouldSkip30mins = hoursWithDuration.any((hr) => hr["startTime"] == hour && hr["duration"] == 30);

    if (shouldSkip1Hours || shouldSkip30mins) continue;

    // Skips the next hour when the current hour is already existed in [hoursWithDuration]
    // This makes sure that 2 hours is already occupied
    if (shouldSkip2Hours) {
      index += 1;
      continue;
    }

    hours.add(hour);
  }

  return hours;
}

List<Duration> hoursWith30minutes(List<ScheduleModel> scheduledTimes) {
  final hoursWithDuration = scheduledTimes
      .map((e) => {
            "startTime": e.startTime,
            "duration": e.durationByMinutes,
          })
      .toList();
  final remainingHours = hours(scheduledTimes);
  final availableHours = <Duration>[];

  // This will add hours with [XX:30] format to the remaining hours from the method [hours()].
  // Then will check the hours with [XX:30] format from [remainingHours], if it exists, then it will be skipped
  // if not, [hour] or [with30mins] will be added in the [availableHours]
  for (final hour in remainingHours) {
    final with30mins = Duration(hours: hour.inHours, minutes: 30);
    final shouldSkip = hoursWithDuration.any((hr) => hr["startTime"] == hour && hr["duration"] == 30);
    final shouldSkip30mins = hoursWithDuration.any((hr) => hr["startTime"] == with30mins && hr["duration"] == 30);

    if (!shouldSkip) availableHours.add(hour);
    if (!shouldSkip30mins) availableHours.add(with30mins);
  }

  return availableHours;
}
