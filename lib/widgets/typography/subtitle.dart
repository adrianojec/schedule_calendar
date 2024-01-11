import 'package:flutter/material.dart';
import 'package:schedule_calendar/constants/constants.dart';

class Subtitle extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  const Subtitle(
    this.text, {
    this.color = ashGrey,
    this.fontWeight = FontWeight.w700,
    this.fontSize = 14.0,
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
