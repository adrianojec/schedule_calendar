import 'package:flutter/material.dart';
import 'package:schedule_calendar/constants/constants.dart';
import 'package:schedule_calendar/utils/utils.dart';

class ScheduleCalendarButton extends StatelessWidget {
  const ScheduleCalendarButton({
    this.text,
    this.onTap,
    this.buttonColor,
    super.key,
  });

  final String? text;
  final VoidCallback? onTap;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.appTheme.textTheme;
    final isContained = buttonColor != null;

    return InkWell(
      splashColor: Palette.matTurquoise.withOpacity(0.5),
      borderRadius: BorderRadius.circular(8.0),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: isContained ? Colors.transparent : Palette.blackPanther,
            width: 1,
          ),
          color: buttonColor,
        ),
        child: Text(
          text ?? emptyString,
          textAlign: TextAlign.center,
          style: textTheme.labelLarge?.copyWith(
            color: isContained ? Palette.white : Palette.blackPanther,
          ),
        ),
      ),
    );
  }
}
