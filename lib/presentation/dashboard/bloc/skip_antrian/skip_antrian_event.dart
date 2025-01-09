part of 'skip_antrian_bloc.dart';

@freezed
class SkipAntrianEvent with _$SkipAntrianEvent {
  const factory SkipAntrianEvent.started() = _Started;
  const factory SkipAntrianEvent.skipAntrian(String id) = _SkipAntrian;
}