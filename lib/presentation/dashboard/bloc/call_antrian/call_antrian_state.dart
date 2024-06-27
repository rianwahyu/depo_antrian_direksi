part of 'call_antrian_bloc.dart';

@freezed
class CallAntrianState with _$CallAntrianState {
  const factory CallAntrianState.initial() = _Initial;
  const factory CallAntrianState.loading() = _Loading;
  const factory CallAntrianState.loaded() = _Loaded;
  const factory CallAntrianState.error() = _Error;
  
}
