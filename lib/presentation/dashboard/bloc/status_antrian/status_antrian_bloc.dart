import 'package:bloc/bloc.dart';
import 'package:depo_antrian_direksi/data/datasource/antrian_data_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_antrian_event.dart';
part 'status_antrian_state.dart';
part 'status_antrian_bloc.freezed.dart';

class StatusAntrianBloc extends Bloc<StatusAntrianEvent, StatusAntrianState> {
  final AntrianDataSource _antrianRemoteDatasource;

  StatusAntrianBloc(
    this._antrianRemoteDatasource,
  ) : super(const Initial()) {
    on<_CekStatusAntrian>((event, emit) async {
      emit(const Loading());
      final result = await _antrianRemoteDatasource.cekStatusAntrian();
      result.fold((l) {
      } , (r) {
        print('Antrian Status : $r');
        if (r == "Aktif") {          
          emit(Loaded(r));
          emit(const StatusAntrianState.switchToggled(true));
        } 
      });
    });

    on<_UpdateStatusAntrian>((event, emit) async {

      emit(const Loading());

      final result = await _antrianRemoteDatasource.updateStatusAntrian(
        event.isSwitched,
        event.changeBy,
      );

      result.fold((l) => emit(ErrorUpdateStatusAntrian(l)), (r) {
        emit(SuccessUpdateStatusAntrian(r));
        if (r == "Aktif") {
          emit(const StatusAntrianState.switchToggled(true));
        } else {
          emit(const StatusAntrianState.switchToggled(false));
        }
      });
    });
  }
}
