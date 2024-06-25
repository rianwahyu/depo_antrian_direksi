part of 'counter_time_bloc.dart';

@freezed
class CounterTimeState with _$CounterTimeState {
  const factory CounterTimeState.initial() = _Initial;
  const factory CounterTimeState.running(int duration) = Running;
  const factory CounterTimeState.finished() = Finished;
}
