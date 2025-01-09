import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasource/antrian_data_source.dart';

part 'skip_antrian_event.dart';
part 'skip_antrian_state.dart';
part 'skip_antrian_bloc.freezed.dart';

class SkipAntrianBloc extends Bloc<SkipAntrianEvent, SkipAntrianState> {
  final AntrianDataSource _antrianRemoteDatasource;
  SkipAntrianBloc(
    this._antrianRemoteDatasource,
  ) : super(const _Initial()) {
    on<_SkipAntrian>((event, emit) async {
      emit(const _Loading());
      final result = await _antrianRemoteDatasource.skipAntrian(event.id);
      result.fold((l) {}, (r) {
        emit(_Loaded());
      });
    });
  }
}
