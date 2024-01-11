import 'package:flutter/material.dart';
import 'package:schedule_calendar/constants/constants.dart';

class Body extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  const Body(
    this.text, {
    this.color = black,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 12.0,
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
