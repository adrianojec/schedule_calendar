import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule_calendar/constants/constants.dart';
import 'package:schedule_calendar/utils/utils.dart';
import 'package:schedule_calendar/widgets/widgets.dart';

const double _closeButtonSize = 34.0;
const List<Map<String, String>> _scheduledEvents = [
  {"date": "Thursday, 18 March, 2024", "time": "14:00 - 16:00", "duration": "120 mins"},
  {"date": "Thursday, 19 March, 2024", "time": "8:00 - 10:00", "duration": "120 mins"},
  {"date": "Thursday, 24 March, 2024", "time": "19:30 - 20:00", "duration": "120 mins"},
];

class InvitationSentScreen extends StatelessWidget {
  static const String routeName = '/invitation-sent-screen';

  const InvitationSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.appTheme.textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Palette.lushGreen,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: _closeButtonSize,
                width: _closeButtonSize,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Palette.white,
                ),
                child: const Icon(
                  Icons.close,
                  color: Palette.lushGreen,
                ),
              ),
              const VerticalSpace(45.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  children: [
                    Text(
                      'Your 2hr Personal Training sessions invitation has been sent to',
                      style: textTheme.headlineLarge,
                    ),
                    const VerticalSpace(24.0),
                    const UserProfile(
                      imageUrl: userImage,
                      textColor: Palette.blancoWhite,
                    ),
                    const VerticalSpace(24.0),
                    ..._scheduledEvents.map(
                      (event) => Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  event['date'] ?? emptyString,
                                  style: textTheme.bodySmall?.copyWith(color: Palette.blancoWhite),
                                ),
                                const VerticalSpace(8.0),
                                Text(
                                  event['time'] ?? emptyString,
                                  style: textTheme.bodySmall?.copyWith(color: Palette.blancoWhite),
                                ),
                              ],
                            ),
                            ScheduleCalendarButton(
                              text: event['duration'],
                              buttonColor: Palette.matGreen,
                              textStyle: textTheme.bodyLarge?.copyWith(color: Palette.white),
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const VerticalSpace(16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(globeWhiteIcon),
                        const HorizontalSpace(8.0),
                        Text(
                          singaporeStandardTime,
                          style: textTheme.bodyLarge?.copyWith(
                            color: Palette.blancoWhite,
                            fontSize: 11.0,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const VerticalSpace(32.0),
              Center(
                child: SizedBox(
                  width: size.width * 0.9,
                  child: ScheduleCalendarButton(
                    text: viewYourCalendar,
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    customBorderColor: Palette.blancoWhite,
                    textStyle: textTheme.titleLarge?.copyWith(
                      color: Palette.blancoWhite,
                      fontWeight: FontWeight.w400,
                    ),
                    borderRadius: 18.0,
                  ),
                ),
              ),
              Container(
                width: size.width,
                padding: const EdgeInsets.only(top: 32.0),
                child: InkWell(
                  onTap: context.navigator.pop,
                  child: Text(
                    done,
                    textAlign: TextAlign.center,
                    style: textTheme.titleLarge?.copyWith(
                      color: Palette.blancoWhite,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
