part of 'delete_token_bloc.dart';

@freezed
class DeleteTokenEvent with _$DeleteTokenEvent {
  const factory DeleteTokenEvent.started() = _Started;
  const factory DeleteTokenEvent.deleteToken() = _DeleteToken;
}