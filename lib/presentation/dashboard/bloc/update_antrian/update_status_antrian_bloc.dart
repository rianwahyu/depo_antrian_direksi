import 'package:bloc/bloc.dart';
import 'package:depo_antrian_direksi/data/datasource/antrian_data_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_status_antrian_event.dart';
part 'update_status_antrian_state.dart';
part 'update_status_antrian_bloc.freezed.dart';

class UpdateStatusAntrianBloc
    extends Bloc<UpdateStatusAntrianEvent, UpdateStatusAntrianState> {
  final AntrianDataSource _antrianRemoteDatasource;
  UpdateStatusAntrianBloc(
    this._antrianRemoteDatasource,
  ) : super(const _Initial()) {
    on<_updateAntrian>((event, emit) async {
      if (event.statusAntrian == "Masuk") {
        emit(const _LoadingDilayani());
      } else if (event.statusAntrian == "Selesai") {
        emit(const _LoadingSelesai());
      }

      final result = await _antrianRemoteDatasource.updateAntrianByID(
        event.id,
        event.changeBy,
        event.statusAntrian,
      );
      result.fold((l) {}, (r) {
        if (event.statusAntrian == "Masuk") {
          emit(_LoadedDilayani());
        } else if (event.statusAntrian == "Selesai") {
          emit(_LoadedSelesai());
        }
      });
    });

    on<_updateAntrianCancel>((event, emit) async {
      emit(const _LoadingCancel());

      final result = await _antrianRemoteDatasource.updateAntrianByID(
        event.id,
        event.changeBy,
        event.statusAntrian,
      );
      result.fold((l) {}, (r) {
        emit(_LoadedCancel());
      });
    });
  }
}
