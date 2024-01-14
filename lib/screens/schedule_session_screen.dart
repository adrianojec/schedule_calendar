import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule_calendar/constants/constants.dart';
import 'package:schedule_calendar/data/mock/event_data.dart';
import 'package:schedule_calendar/screens/screens.dart';
import 'package:schedule_calendar/utils/utils.dart';
import 'package:schedule_calendar/widgets/widgets.dart';

class ScheduleSessionScreen extends StatelessWidget {
  static const String routeName = '/schedule-session-screen';

  const ScheduleSessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.appTheme.textTheme;
    final size = MediaQuery.of(context).size;

    return EventScreenView(
      contents: [
        Center(
          child: SizedBox(
            width: size.width * 0.6,
            child: const ScheduleCalendarButton(
              text: addNewEvent,
            ),
          ),
        ),
        const VerticalSpace(16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              scheduleEvent,
              style: textTheme.labelLarge?.copyWith(color: Palette.blackPanther),
            ),
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
          ],
        ),
        const VerticalSpace(16.0),
        SizedBox(
          width: size.width * 0.5,
          child: RoundButton(
            text: addNotes,
            onTap: () => _showAddNotesBottomSheet(context),
          ),
        ),
        const VerticalSpace(14.0),
        EventTile(
          event: events[0],
          eventDate: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Thursday, 18 March, 2024',
                style: textTheme.bodySmall,
              ),
              const VerticalSpace(8.0),
              Text(
                '14:00 - 16:00',
                style: textTheme.bodySmall,
              ),
            ],
          ),
        ),
        const Spacer(),
        SafeArea(
          child: Center(
            child: SizedBox(
              width: size.width * 0.8,
              child: ScheduleCalendarButton(
                buttonColor: Palette.blackPanther,
                text: scheduleSessionFor60,
                onTap: () => _showTermsAndCondtionBottomSheet(context),
              ),
            ),
          ),
        )
      ],
    );
  }

  void _showAddNotesBottomSheet(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final initialBottomSheetHeight = size.height * 0.25;
    double modalSheetHeight = initialBottomSheetHeight;
    int maxLines = 4;

    showModalBottomSheet(
      barrierColor: Colors.transparent,
      context: context,
      builder: (_) => StatefulBuilder(
        builder: (_, setState) {
          final isHeightChanged = modalSheetHeight != initialBottomSheetHeight;

          return AddNotesSheet(
            height: modalSheetHeight,
            maxLines: maxLines,
            onPressExpand: () {
              setState(() {
                modalSheetHeight = isHeightChanged ? initialBottomSheetHeight : size.height * 0.5;
                maxLines = isHeightChanged ? 4 : 16;
              });
            },
          );
        },
      ),
    );
  }

  void _showTermsAndCondtionBottomSheet(BuildContext context) => showModalBottomSheet(
        barrierColor: Palette.black.withOpacity(0.8),
        context: context,
        builder: (_) => TermsAndConditionSheet(
          onLoading: () {
            Future.delayed(
              const Duration(seconds: 1),
              () => context.navigator.pushNamed(InvitationSentScreen.routeName),
            );
          },
        ),
      );
}
