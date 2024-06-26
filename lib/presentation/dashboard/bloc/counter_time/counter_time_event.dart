part of 'counter_time_bloc.dart';

@freezed
class CounterTimeEvent with _$CounterTimeEvent {
  const factory CounterTimeEvent.started() = _Started;
  const factory CounterTimeEvent.start(int duration) = _StartTimer;
  const factory CounterTimeEvent.tick(int duration) = _Tick;
}
