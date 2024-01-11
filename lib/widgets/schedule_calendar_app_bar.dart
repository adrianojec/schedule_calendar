import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule_calendar/widgets/widgets.dart';

import '../constants/constants.dart';

const double iconSize = 32.0;

class SchedulCalendarAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String imageUrl;
  final String name;
  final String email;
  final String workPosition;
  final VoidCallback? onPressMore;
  final VoidCallback? onPressBack;

  const SchedulCalendarAppBar({
    required this.imageUrl,
    this.name = 'Sarah Chu',
    this.email = '@sarah.sports',
    this.workPosition = 'Personal Trainer',
    this.onPressBack,
    this.onPressMore,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const iconPadding = EdgeInsets.symmetric(
      vertical: 8.0,
      horizontal: 12.0,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                padding: iconPadding,
                iconSize: iconSize,
                icon: SvgPicture.asset('$iconPath/back.svg'),
                onPressed: onPressBack,
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 24,
                backgroundImage: AssetImage(imageUrl),
              ),
              const HorizontalSpace(13.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Body(name),
                  Body(
                    email,
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                  ),
                  Body(
                    workPosition,
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            padding: iconPadding,
            iconSize: iconSize,
            icon: SvgPicture.asset('$iconPath/more.svg'),
            onPressed: onPressBack,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
