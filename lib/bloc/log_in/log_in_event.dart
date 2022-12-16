part of 'log_in_bloc.dart';

@freezed
class LogInEvent with _$LogInEvent {
  const factory LogInEvent.updateLogin(String login) = _UpdateLogin;
  const factory LogInEvent.updatePassword(String password) = _UpdatePassword;
  const factory LogInEvent.logIn() = _LogIn;
}