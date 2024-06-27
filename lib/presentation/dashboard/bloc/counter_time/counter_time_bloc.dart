import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_time_event.dart';
part 'counter_time_state.dart';
part 'counter_time_bloc.freezed.dart';

class CounterTimeBloc extends Bloc<CounterTimeEvent, CounterTimeState> {
  late Timer _timer;  

  CounterTimeBloc() : super(const _Initial()) {    
    on<_StartTimer>(_onStartTimer);
    on<_Tick>(_onTick);
  }

  void _onStartTimer(_StartTimer event, Emitter<CounterTimeState> emit) {
    int duration = event.duration;
    emit(Running(duration));

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      add(_Tick(duration - timer.tick));
    });
  }

  void _onTick(_Tick event, Emitter<CounterTimeState> emit) {
    if (event.duration > 0) {
      emit(Running(event.duration));
    } else {
      _timer.cancel();
      emit(const Finished());
    }
  }

  @override
  Future<void> close() {
    // TODO: implement close
    _timer.cancel();

    return super.close();
  }
}
