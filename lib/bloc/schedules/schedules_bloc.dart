import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_calendar/models/models.dart';
import 'package:schedule_calendar/services/airtable_service.dart';
import 'package:schedule_calendar/services/injection_container.dart';

part 'schedules_event.dart';
part 'schedules_state.dart';

class SchedulesBloc extends Bloc<SchedulesEvent, SchedulesState> {
  SchedulesBloc() : super(SchedulesInitial()) {
    on<SchedulesInitialFetchEvent>(_schedulesInitialFetchEvent);
  }

  Future<void> _schedulesInitialFetchEvent(SchedulesInitialFetchEvent event, Emitter<SchedulesState> emit) async {
    try {
      emit(SchedulesLoading());

      final schedules = await getIt<AirtableService>().getScheduledEvents();

      emit(SchedulesSuccess(schedules));
    } catch (e) {
      emit(SchedulesError(e.toString()));
    }
  }
}
