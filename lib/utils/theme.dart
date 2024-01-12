import 'package:flutter/material.dart';

import '../constants/colors.dart';

final ThemeData scheduleCalendarTheme = ThemeData(
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: blancoWhite,
      fontFamily: 'LemonMilkPro',
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: TextStyle(
      color: ashGrey,
      fontSize: 16.0,
      fontFamily: 'LemonMilkPro',
      fontWeight: FontWeight.w300,
    ),
    labelLarge: TextStyle(
      color: ashGrey,
      fontSize: 14.0,
      fontFamily: 'LemonMilkPro',
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(
      color: black,
      fontSize: 12.0,
      fontFamily: 'LemonMilkPro',
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      color: ashGrey,
      fontSize: 10.0,
      fontFamily: 'LemonMilkPro',
      fontWeight: FontWeight.w300,
    ),
  ),
);
