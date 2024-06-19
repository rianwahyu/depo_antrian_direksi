part of 'status_antrian_bloc.dart';

@freezed
class StatusAntrianEvent with _$StatusAntrianEvent {
  const factory StatusAntrianEvent.started() = _Started;
  const factory StatusAntrianEvent.cekStatusAntrian() = _CekStatusAntrian;

  const factory StatusAntrianEvent.updateStatusAntrian(
      bool isSwitched, String changeBy) = _UpdateStatusAntrian;

  
}
