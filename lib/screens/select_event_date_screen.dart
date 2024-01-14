import 'package:flutter/material.dart';
import 'package:schedule_calendar/constants/constants.dart';
import 'package:schedule_calendar/screens/screens.dart';
import 'package:schedule_calendar/utils/utils.dart';
import 'package:schedule_calendar/widgets/widgets.dart';

class SelectEventDateScreen extends StatelessWidget {
  static const String routeName = '/select-event-date';

  const SelectEventDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.appTheme.textTheme;

    return EventScreenView(
      contents: [
        Center(
          child: Text(
            selectADay,
            style: textTheme.bodyLarge,
          ),
        ),
        Expanded(
          child: Calendar(
            onDaySelected: (selectedDay, _) => context.navigator.pushNamed(
              SelectEventTimeScreen.routeName,
              arguments: selectedDay,
            ),
          ),
        ),
      ],
    );
  }
}
