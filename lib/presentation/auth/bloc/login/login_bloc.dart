import 'package:bloc/bloc.dart';
import 'package:depo_antrian_direksi/data/datasource/auth_remote_data_source.dart';
import 'package:depo_antrian_direksi/data/models/response/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDataSource _authRemoteDataSource;

  LoginBloc(
    this._authRemoteDataSource,
  ) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());

      final result =
          await _authRemoteDataSource.login(event.nik, event.tglLahir);

      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
