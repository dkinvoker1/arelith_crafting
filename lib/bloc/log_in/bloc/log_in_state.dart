part of 'log_in_bloc.dart';

@freezed
class LogInState with _$LogInState {
  const factory LogInState.initial({
    @Default('') String login,
    @Default('') String password,
    @Default('') String error,
    @Default(false) bool isLoggedIn,
  }) = _LogInState;
}
