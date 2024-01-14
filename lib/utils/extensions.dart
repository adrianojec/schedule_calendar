import 'package:flutter/material.dart';
import 'package:schedule_calendar/constants/strings.dart';
import 'package:schedule_calendar/utils/utils.dart';

// BuildContext
extension ContextExt on BuildContext {
  NavigatorState get navigator => Navigator.of(this);

  ThemeData get appTheme => Theme.of(this);
}

// EventType
extension EventTypeExt on EventType {
  static const _strings = {
    EventType.inperson: 'In-Person',
    EventType.call: 'Call',
  };

  String get name => _strings[this] ?? emptyString;
}

// SessionType
extension SessionTypeExt on SessionType {
  static const _strings = {
    SessionType.multiple: 'Multiple',
    SessionType.single: 'Session',
  };

  String get name => _strings[this] ?? emptyString;
}

// DateTime
extension DateTimeExt on DateTime {
  DateTime get withoutTime => DateTime(year, month, day);
}

// Int

extension IntWithDurationExt on int {
  Duration get year => Duration(days: this * 365);
}
