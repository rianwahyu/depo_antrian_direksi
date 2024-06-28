part of 'update_status_antrian_bloc.dart';

@freezed
class UpdateStatusAntrianEvent with _$UpdateStatusAntrianEvent {
  const factory UpdateStatusAntrianEvent.started() = _Started;
  const factory UpdateStatusAntrianEvent.updateAntrian(String id, String changeBy, String statusAntrian) = _updateAntrian;
  const factory UpdateStatusAntrianEvent.updateAntrianCancel(String id, String changeBy, String statusAntrian) = _updateAntrianCancel;
}