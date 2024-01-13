import 'package:flutter/material.dart';
import 'package:schedule_calendar/utils/extensions.dart';
import 'package:super_tooltip/super_tooltip.dart';

import '../constants/constants.dart';
import 'widgets.dart';

const double _buttonSize = 72.0;

class SquareButton extends StatelessWidget {
  final Widget? title;
  final String? subtitle;
  final String? tooltipMessage;

  const SquareButton({
    this.title,
    this.subtitle,
    this.tooltipMessage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.appTheme.textTheme;
    final controller = SuperTooltipController();

    return GestureDetector(
      onTap: () async {
        await controller.showTooltip();
      },
      child: SuperTooltip(
        controller: controller,
        arrowTipDistance: 40.0,
        arrowBaseWidth: 14,
        arrowLength: 7,
        backgroundColor: const Color(0xFFD9D9D9),
        borderColor: const Color(0xFFD9D9D9),
        barrierColor: Colors.transparent,
        shadowColor: Colors.transparent,
        content: Text(
          tooltipMessage ?? emptyString,
          style: textTheme.bodyLarge?.copyWith(
            fontSize: 11.0,
            fontWeight: FontWeight.w300,
          ),
        ),
        child: Container(
          height: _buttonSize,
          width: _buttonSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Palette.muteGrey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (title != null) title!,
              const VerticalSpace(4.0),
              Text(
                subtitle ?? emptyString,
                style: textTheme.bodyLarge?.copyWith(
                  color: Palette.ashGrey,
                  fontSize: 11.0,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
