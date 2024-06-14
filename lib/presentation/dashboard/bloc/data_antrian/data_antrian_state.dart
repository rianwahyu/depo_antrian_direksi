part of 'data_antrian_bloc.dart';

@freezed
class DataAntrianState with _$DataAntrianState {
  const factory DataAntrianState.initial() = _Initial;
  const factory DataAntrianState.loading() = _Loading;
  const factory DataAntrianState.loaded(List<AntrianDireksi> antrianData) = _Loaded;
  const factory DataAntrianState.error(String message) = _Error;
}
