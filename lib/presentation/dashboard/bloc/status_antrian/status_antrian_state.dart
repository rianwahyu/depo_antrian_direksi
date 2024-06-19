part of 'status_antrian_bloc.dart';

@freezed
class StatusAntrianState with _$StatusAntrianState {
  const factory StatusAntrianState.initial() = Initial;
  const factory StatusAntrianState.loading() = Loading;
  const factory StatusAntrianState.loaded(String message) = Loaded;
  const factory StatusAntrianState.error(String message) = Error;
  const factory StatusAntrianState.successUpdateStatusAntrian(String message) =
      SuccessUpdateStatusAntrian;
  const factory StatusAntrianState.errorUpdateStatusAntrian(String message) =
      ErrorUpdateStatusAntrian;
        const factory StatusAntrianState.switchToggled(bool isSwitched) = SwitchToggled;

}
