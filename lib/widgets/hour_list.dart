import 'package:flutter/material.dart';
import 'package:schedule_calendar/constants/constants.dart';
import 'package:schedule_calendar/data/model/event_time.dart';
import 'package:schedule_calendar/screens/screens.dart';
import 'package:schedule_calendar/utils/utils.dart';
import 'package:schedule_calendar/widgets/widgets.dart';

class HourList extends StatefulWidget {
  const HourList({
    super.key,
    required this.hours,
  });

  final List<EventTime> hours;

  @override
  State<HourList> createState() => _HourListState();
}

class _HourListState extends State<HourList> {
  late EventTime? selectedHour;
  late List<EventTime> hourList;

  @override
  void initState() {
    super.initState();
    selectedHour = null;
    hourList = widget.hours;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: hourList.length,
        separatorBuilder: (_, __) => const VerticalSpace(26.0),
        itemBuilder: (_, index) => Row(
          children: [
            if (selectedHour != hourList[index]) ...[
              Expanded(
                child: ScheduleCalendarButton(
                  text: hourList[index].toString(),
                  onTap: () => _onSelectTime(hourList[index]),
                ),
              ),
            ] else ...[
              Expanded(
                child: ScheduleCalendarButton(
                  text: hourList[index].toString(),
                  onTap: () => _onSelectTime(null),
                  buttonColor: Palette.matTurquoise,
                ),
              ),
              const HorizontalSpace(10.0),
              Expanded(
                child: ScheduleCalendarButton(
                  text: next,
                  buttonColor: Palette.blackPanther,
                  onTap: _navigateToScheduleSessionScreen,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _onSelectTime(EventTime? time) => setState(() => selectedHour = time);

  void _navigateToScheduleSessionScreen() => context.navigator.pushNamed(ScheduleSessionScreen.routeName);
}
