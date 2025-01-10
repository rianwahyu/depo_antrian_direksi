part of 'delete_token_bloc.dart';

@freezed
class DeleteTokenState with _$DeleteTokenState {
  const factory DeleteTokenState.initial() = _Initial;
  const factory DeleteTokenState.loading() = _Loading;
  const factory DeleteTokenState.success(String message) = _Success;
  const factory DeleteTokenState.error(String message) = _Error;
}
