part of 'update_status_antrian_bloc.dart';

@freezed
class UpdateStatusAntrianState with _$UpdateStatusAntrianState {
  const factory UpdateStatusAntrianState.initial() = _Initial;
  const factory UpdateStatusAntrianState.loadingDilayani() = _LoadingDilayani;
  const factory UpdateStatusAntrianState.loadedDilayani() = _LoadedDilayani;
  const factory UpdateStatusAntrianState.errorDilayani() = _ErrorDilayani;

  const factory UpdateStatusAntrianState.loadingSelesai() = _LoadingSelesai;
  const factory UpdateStatusAntrianState.loadedSelesai() = _LoadedSelesai;
  const factory UpdateStatusAntrianState.errorSelesai() = _ErrorSelesai;


  const factory UpdateStatusAntrianState.loadingCancel() = _LoadingCancel;
  const factory UpdateStatusAntrianState.loadedCancel() = _LoadedCancel;
  const factory UpdateStatusAntrianState.errorCancel() = _ErrorCancel;
}
