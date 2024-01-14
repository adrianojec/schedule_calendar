import 'package:schedule_calendar/constants/constants.dart';
import 'package:schedule_calendar/data/mock/model/schedule_event.dart';
import 'package:schedule_calendar/utils/utils.dart';

final events = [
  ScheduleEvent(
    imageUrl: userImage,
    title: '2hr Privater Training Sessions',
    userRole: 'Coach',
    type: EventType.inperson,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    duration: 30,
    session: SessionType.multiple,
  ),
  ScheduleEvent(
    imageUrl: userImage,
    title: 'Adult Group Class',
    userRole: 'Coach',
    type: EventType.inperson,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    duration: 60,
    session: SessionType.single,
  ),
  ScheduleEvent(
    imageUrl: userImage,
    title: 'Diet Consultation',
    userRole: 'Coach',
    type: EventType.call,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    duration: 30,
    session: SessionType.single,
  ),
];
