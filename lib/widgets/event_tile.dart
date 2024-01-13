import 'package:flutter/material.dart';
import 'package:schedule_calendar/data/mock/model/schedule_event.dart';
import 'package:schedule_calendar/utils/enums.dart';
import 'package:schedule_calendar/utils/extensions.dart';

import '../constants/constants.dart';
import 'widgets.dart';

class EventTile extends StatelessWidget {
  final ScheduleEvent event;
  final VoidCallback? onPressed;

  const EventTile({
    required this.event,
    this.onPressed,
    super.key,
  });

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
                children: [
                  Column(
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
                          GestureDetector(
                            onTap: onPressed,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 16.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Palette.matGreen,
                              ),
                              child: Text(
                                '${event.duration} mins',
                                style: textTheme.bodyLarge?.copyWith(
                                  color: Palette.blancoWhite,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const VerticalSpace(7.0),
                  Text(
                    event.description,
                    style: textTheme.bodySmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
