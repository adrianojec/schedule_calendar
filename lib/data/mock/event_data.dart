import 'package:schedule_calendar/constants/constants.dart';
import 'package:schedule_calendar/data/mock/model/schedule_event.dart';
import 'package:schedule_calendar/utils/enums.dart';

final events = [
  ScheduleEvent(
    imageUrl: userImage,
    title: 'Privater Training Sessions',
    userRole: 'Coach',
    type: EventType.inperson,
    description:
        'Legal : Consultation for with regards to Intellectual Property, Copyrights, Trade Mark & other business ...',
    duration: 30,
  ),
  ScheduleEvent(
    imageUrl: userImage,
    title: 'Adult Group Class',
    userRole: 'Coach',
    type: EventType.inperson,
    description:
        'Legal : Consultation for with regards to Intellectual Property, Copyrights, Trade Mark & other business ...',
    duration: 60,
  ),
  ScheduleEvent(
    imageUrl: userImage,
    title: 'Diet Consultation',
    userRole: 'Coach',
    type: EventType.call,
    description:
        'Legal : Consultation for with regards to Intellectual Property, Copyrights, Trade Mark & other business ...',
    duration: 30,
  ),
];
