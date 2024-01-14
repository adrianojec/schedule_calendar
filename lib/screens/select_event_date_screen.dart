import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule_calendar/utils/utils.dart';
import 'package:schedule_calendar/widgets/widgets.dart';

import '../constants/constants.dart';

class SelectEventDateScreen extends StatelessWidget {
  static const String routeName = '/select-event-date';

  const SelectEventDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.appTheme.textTheme;

    return Scaffold(
      appBar: const SchedulCalendarAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 21.0,
          left: 26.0,
          right: 26.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privater Training Sessions',
              style: textTheme.labelLarge,
            ),
            const VerticalSpace(16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SquareButton(
                  title: SvgPicture.asset(personWalkingIcon),
                  subtitle: EventType.inperson.name,
                  tooltipMessage: 'Location will be confirmed upon confirmation.',
                ),
                SquareButton(
                  title: SvgPicture.asset(clockIcon),
                  subtitle: '120 mins',
                  tooltipMessage: 'Duration of this session.',
                ),
                Builder(builder: (context) {
                  return SquareButton(
                    title: Text(
                      '+1',
                      style: textTheme.headlineLarge?.copyWith(
                        color: Palette.ashGrey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: SessionType.multiple.name,
                    tooltipMessage: 'You may book multiple sessions.',
                  );
                }),
              ],
            ),
            const VerticalSpace(16.0),
            const EllipsisText(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            ),
            const VerticalSpace(16.0),
            Center(
              child: Text(
                selectADay,
                style: textTheme.bodyLarge,
              ),
            ),
            const Expanded(
              child: Calendar(),
            ),
          ],
        ),
      ),
    );
  }
}
