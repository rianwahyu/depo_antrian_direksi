part of 'call_antrian_bloc.dart';

@freezed
class CallAntrianEvent with _$CallAntrianEvent {
  const factory CallAntrianEvent.started() = _Started;
  const factory CallAntrianEvent.callAntrian(String id) = _CallAntrian;
}