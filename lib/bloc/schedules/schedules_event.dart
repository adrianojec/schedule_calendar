part of 'schedules_bloc.dart';

@immutable
sealed class SchedulesEvent {}

class SchedulesInitialFetchEvent extends SchedulesEvent {}
