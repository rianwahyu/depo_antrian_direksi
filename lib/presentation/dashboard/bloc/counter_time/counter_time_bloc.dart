import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_time_event.dart';
part 'counter_time_state.dart';
part 'counter_time_bloc.freezed.dart';

class CounterTimeBloc extends Bloc<CounterTimeEvent, CounterTimeState> {
  late Timer _timer;

  CounterTimeBloc() : super(CounterTimeState.initial());

  @override
  Stream<CounterTimeState> mapEventToState(
    CounterTimeEvent event,
  ) async* {
    yield* event.when(
      started: () async* {
        // Handle the event when the timer is started
      },
      start: (int duration) async* {
        yield* _mapStartTimerToState(duration);
      },
    );
  }

  Stream<CounterTimeState> _mapStartTimerToState(int duration) async* {
    yield CounterTimeState.running(duration);

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (duration > 0) {
        duration--;
        add(CounterTimeEvent.start(duration)); // This line should trigger the handler for StartTimer event
      } else {
        _timer.cancel();
        add(CounterTimeEvent.started()); // Trigger finished state
      }
    });
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
