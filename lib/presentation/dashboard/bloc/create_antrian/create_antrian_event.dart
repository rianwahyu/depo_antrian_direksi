part of 'create_antrian_bloc.dart';

@freezed
class CreateAntrianEvent with _$CreateAntrianEvent {
  const factory CreateAntrianEvent.started() = _Started;
  const factory CreateAntrianEvent.createKeperluan(String nik,String keperluan) = _CreateKeperluan;  
}