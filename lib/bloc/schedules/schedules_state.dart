part of 'schedules_bloc.dart';

@immutable
sealed class SchedulesState {}

final class SchedulesInitial extends SchedulesState {}

final class SchedulesLoading extends SchedulesState {}

final class SchedulesSuccess extends SchedulesState {
  final List<ScheduleModel> schedules;

  SchedulesSuccess(this.schedules);
}

final class SchedulesError extends SchedulesState {
  final String message;

  SchedulesError(this.message);
}
