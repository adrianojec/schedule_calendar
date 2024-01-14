import 'package:flutter/material.dart';
import 'package:schedule_calendar/utils/utils.dart';
import 'package:schedule_calendar/widgets/spacer/horizontal_space.dart';

class UserProfile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String email;
  final String workPosition;

  const UserProfile({
    required this.imageUrl,
    this.name = 'Sarah Chu',
    this.email = '@sarah.sports',
    this.workPosition = 'Personal Trainer',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.appTheme.textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 24.0,
          backgroundImage: AssetImage(imageUrl),
        ),
        const HorizontalSpace(13.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              name,
              style: textTheme.bodyLarge,
            ),
            Text(
              email,
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 11.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              workPosition,
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 11.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
