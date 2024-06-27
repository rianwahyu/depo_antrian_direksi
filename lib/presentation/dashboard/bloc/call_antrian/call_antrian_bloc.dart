import 'package:bloc/bloc.dart';
import 'package:depo_antrian_direksi/data/datasource/antrian_data_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_antrian_event.dart';
part 'call_antrian_state.dart';
part 'call_antrian_bloc.freezed.dart';

class CallAntrianBloc extends Bloc<CallAntrianEvent, CallAntrianState> {
  final AntrianDataSource _antrianRemoteDatasource;

  CallAntrianBloc(
    this._antrianRemoteDatasource,
  ) : super(const _Initial()) {
    on<_CallAntrian>((event, emit) async {
      emit(const _Loading());
      final result = await _antrianRemoteDatasource.callAntrian(event.id);
      result.fold((l) {}, (r) {
        emit(_Loaded());
      });
    });
  }
}
