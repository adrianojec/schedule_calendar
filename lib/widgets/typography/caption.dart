import 'package:flutter/material.dart';
import 'package:schedule_calendar/constants/constants.dart';

class Caption extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  const Caption(
    this.text, {
    this.color = ashGrey,
    this.fontWeight = FontWeight.w300,
    this.fontSize = 10.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'LemonMilkPro',
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
