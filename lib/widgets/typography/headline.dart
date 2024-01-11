import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class Headline extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  const Headline(
    this.text, {
    this.color = blancoWhite,
    this.fontWeight = FontWeight.w700,
    this.fontSize = 24.0,
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
