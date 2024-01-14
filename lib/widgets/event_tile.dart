import 'package:flutter/material.dart';
import 'package:schedule_calendar/data/model/schedule_event.dart';
import 'package:schedule_calendar/utils/utils.dart';

import '../constants/constants.dart';
import 'widgets.dart';

class EventTile extends StatelessWidget {
  const EventTile({
    required this.event,
    this.onPressed,
    this.eventDate,
    super.key,
  });

  final ScheduleEvent event;
  final VoidCallback? onPressed;
  final Widget? eventDate;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.appTheme.textTheme;
    final isCallType = event.type == EventType.call;

    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Palette.ashGrey,
            width: 0.5,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 24.0,
              backgroundImage: AssetImage(event.imageUrl),
            ),
            const HorizontalSpace(16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            event.title,
                            style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.2,
                            ),
                          ),
                          const VerticalSpace(4.0),
                          Row(
                            children: [
                              Text(
                                event.userRole,
                                style: textTheme.bodyLarge?.copyWith(
                                  color: Palette.blackPanther,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              const HorizontalSpace(8.0),
                              EventTypeChip(
                                color: isCallType ? Palette.matPastelPurple : const Color(0xFFBCDCDA),
                                leadingIcon: isCallType
                                    ? const Icon(
                                        Icons.headphones,
                                        size: 11.0,
                                      )
                                    : null,
                                text: event.type.name,
                              )
                            ],
                          )
                        ],
                      ),
                      ScheduleCalendarButton(
                        text: '${event.duration} mins',
                        buttonColor: Palette.matGreen,
                        textStyle: textTheme.bodyLarge?.copyWith(color: Palette.white),
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 12.0,
                        ),
                        onTap: onPressed,
                      ),
                    ],
                  ),
                  const VerticalSpace(7.0),
                  eventDate ??
                      Text(
                        event.description,
                        style: textTheme.bodySmall,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
