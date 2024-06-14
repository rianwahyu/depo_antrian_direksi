part of 'data_antrian_bloc.dart';

@freezed
class DataAntrianEvent with _$DataAntrianEvent {
  const factory DataAntrianEvent.started() = _Started;
  const factory DataAntrianEvent.getAntrian() = _GetAntrian;  
}