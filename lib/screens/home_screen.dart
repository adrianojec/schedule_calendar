import 'package:flutter/material.dart';
import 'package:schedule_calendar/constants/constants.dart';
import 'package:schedule_calendar/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: white,
      appBar: SchedulCalendarAppBar(imageUrl: '$imagePath/user.png'),
      body: SafeArea(
        child: Column(
          children: [
            // SchedulCalendarAppBar(),
          ],
        ),
      ),
    );
  }
}
