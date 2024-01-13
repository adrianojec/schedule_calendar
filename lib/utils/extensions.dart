import 'package:flutter/material.dart';
import 'package:schedule_calendar/constants/strings.dart';
import 'package:schedule_calendar/utils/enums.dart';

extension ContextExt on BuildContext {
  // Navigation
  NavigatorState get navigator => Navigator.of(this);

  // App Theme
  ThemeData get appTheme => Theme.of(this);
}

extension EventTypeExt on EventType {
  static const _strings = {
    EventType.inperson: 'In-Person',
    EventType.call: 'Call',
  };

  String get name => _strings[this] ?? emptyString;
}

extension SessionTypeExt on SessionType {
  static const _strings = {
    SessionType.multiple: 'Multiple',
    SessionType.single: 'Session',
  };

  String get name => _strings[this] ?? emptyString;
}
