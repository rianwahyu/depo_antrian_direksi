import 'package:bloc/bloc.dart';
import 'package:depo_antrian_direksi/data/datasource/antrian_data_source.dart';

import 'package:depo_antrian_direksi/data/models/response/antrian_data_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_antrian_event.dart';
part 'data_antrian_state.dart';
part 'data_antrian_bloc.freezed.dart';

class DataAntrianBloc extends Bloc<DataAntrianEvent, DataAntrianState> {
  final AntrianDataSource _antrianRemoteDatasource;
  DataAntrianBloc(
    this._antrianRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetAntrian>((event, emit) async {
      emit(const _Loading());
      final result = await _antrianRemoteDatasource.getAntrian();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(
          _Loaded(r.data ?? []),
        ),
      );
    });
  }
}
