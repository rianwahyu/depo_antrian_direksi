import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasource/auth_remote_data_source.dart';

part 'delete_token_event.dart';
part 'delete_token_state.dart';
part 'delete_token_bloc.freezed.dart';

class DeleteTokenBloc extends Bloc<DeleteTokenEvent, DeleteTokenState> {
  final AuthRemoteDataSource _authRemoteDataSource;
  DeleteTokenBloc(
    this._authRemoteDataSource,
  ) : super(_Initial()) {
    on<_DeleteToken>((event, emit) async {
      emit(const _Loading());

      final result = await _authRemoteDataSource.deleteTokenByNik();

      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
