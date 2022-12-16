// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:arelith_crafting/repositories/log_in_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_event.dart';
part 'log_in_state.dart';
part 'log_in_bloc.freezed.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc() : super(_LogInState()) {
    on<_UpdateLogin>((event, emit) {
      var newState = state.copyWith(login: event.login);
      emit.call(newState);
    });

    on<_UpdatePassword>((event, emit) {
      var newState = state.copyWith(password: event.password);
      emit.call(newState);
    });

    on<_LogIn>((event, emit) async {
      var logInException =
          await LogInRepository().logIn(state.login, state.password);

      var newState = state.copyWith(
          error: logInException == null ? '' : logInException.toString(),
          isLoggedIn: logInException == null ? true : false);
      emit.call(newState);
    });
  }
}
