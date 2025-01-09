part of 'skip_antrian_bloc.dart';

@freezed
class SkipAntrianState with _$SkipAntrianState {
  const factory SkipAntrianState.initial() = _Initial;
  const factory SkipAntrianState.loading() = _Loading;
  const factory SkipAntrianState.loaded() = _Loaded;
  const factory SkipAntrianState.error() = _Error;
}
