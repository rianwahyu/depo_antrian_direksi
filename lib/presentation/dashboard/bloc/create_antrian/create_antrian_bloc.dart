import 'package:bloc/bloc.dart';
import 'package:depo_antrian_direksi/data/datasource/antrian_data_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_antrian_event.dart';
part 'create_antrian_state.dart';
part 'create_antrian_bloc.freezed.dart';

class CreateAntrianBloc extends Bloc<CreateAntrianEvent, CreateAntrianState> {
  final AntrianDataSource _antrianDataSource;

  CreateAntrianBloc(
    this._antrianDataSource,
  ) : super(const _Initial()) {
    on<_CreateKeperluan>((event, emit) async {
      emit(const _Loading());

      final result = await _antrianDataSource.createAntrian(
        event.nik,
        event.keperluan,
      );

      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
