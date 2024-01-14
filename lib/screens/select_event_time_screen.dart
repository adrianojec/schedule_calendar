import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:schedule_calendar/constants/constants.dart';
import 'package:schedule_calendar/utils/hours.dart';
import 'package:schedule_calendar/utils/utils.dart';
import 'package:schedule_calendar/widgets/widgets.dart';

class SelectEventTimeScreen extends StatelessWidget {
  static const String routeName = '/select-event-time';

  const SelectEventTimeScreen({
    required this.selectedDate,
    super.key,
  });

  final DateTime selectedDate;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.appTheme.textTheme;
    final size = MediaQuery.of(context).size;
    final day = DateFormat(fullDayFormat).format(selectedDate);
    final formattedDate = DateFormat(fullDateFormat).format(selectedDate);

    return Scaffold(
      appBar: SchedulCalendarAppBar(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 14.0),
          child: Hero(
            tag: 'AppBarTitle',
            child: Text(
              'Privater Training Sessions',
              style: textTheme.labelLarge,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 21.0,
          left: 26.0,
          right: 26.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'EventInfoRow',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SquareButton(
                    title: SvgPicture.asset(personWalkingIcon),
                    subtitle: EventType.inperson.name,
                    tooltipMessage: locationTooltipMessage,
                  ),
                  SquareButton(
                    title: SvgPicture.asset(clockIcon),
                    subtitle: '120 mins',
                    tooltipMessage: durationTooltipMessage,
                  ),
                  SquareButton(
                    title: Text(
                      '+1',
                      style: textTheme.headlineLarge?.copyWith(
                        color: Palette.ashGrey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: SessionType.multiple.name,
                    tooltipMessage: sessionTooltipMessage,
                  ),
                ],
              ),
            ),
            const VerticalSpace(30.0),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              width: size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Palette.matPastelGreen,
              ),
              child: Column(
                children: [
                  Text(
                    day,
                    style: textTheme.bodyLarge?.copyWith(
                      color: Palette.blackPanther,
                      fontSize: 11.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    formattedDate,
                    style: textTheme.bodyLarge?.copyWith(
                      color: Palette.blackPanther,
                      fontSize: 11.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const VerticalSpace(10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(globeIcon),
                const HorizontalSpace(8.0),
                Text(
                  singaporeStandardTime,
                  style: textTheme.bodyLarge?.copyWith(
                    color: Palette.ashGrey,
                    fontSize: 11.0,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
            const VerticalSpace(20.0),
            Text(
              selectATime,
              style: textTheme.bodyLarge,
            ),
            const VerticalSpace(10.0),
            Text(
              'Duration: 120 mins',
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 11.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            const VerticalSpace(26.0),
            Expanded(
              child: SizedBox(
                width: size.width * 0.6,
                child: HourList(hours: hours()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
