part of 'create_antrian_bloc.dart';

@freezed
class CreateAntrianState with _$CreateAntrianState {
  const factory CreateAntrianState.initial() = _Initial;
  const factory CreateAntrianState.loading() = _Loading;
  const factory CreateAntrianState.success(String message) = _Success;
  const factory CreateAntrianState.error(String message) = _Error;
}
