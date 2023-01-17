// ignore_for_file: prefer_const_constructors_in_immutables, depend_on_referenced_packages, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/log_in/log_in_bloc.dart';
import '../widgets/form/text_field.dart';
import '../widgets/styled_elevated_button/rounded_elevated_button.dart';

class LogInPage extends StatefulWidget {
  LogInPage({Key? key, required this.onLoginCallback}) : super(key: key);

  final Function(bool loggedIn) onLoginCallback;

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogInBloc(),
      child: BlocConsumer<LogInBloc, LogInState>(
        listenWhen: (previousState, state) {
          return state.isLoggedIn;
        },
        listener: (context, state) {
          widget.onLoginCallback.call(true);
        },
        builder: (context, state) {
          return Row(
            children: [
              Flexible(child: Container()),
              Flexible(
                child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ArelithTextFormField(
                          // initialValue: 'admin@gmail.com',
                          name: 'Login',
                          onSaved: (newValue) {
                            context
                                .read<LogInBloc>()
                                .add(LogInEvent.updateLogin(newValue!));
                          },
                          onFieldSubmitted: (value) {
                            submitMethod(context);
                          },
                        ),
                        ArelithTextFormField(
                          // initialValue: 'admin123',
                          name: 'Password',
                          isPassword: true,
                          onSaved: (newValue) {
                            context
                                .read<LogInBloc>()
                                .add(LogInEvent.updatePassword(newValue!));
                          },
                          onFieldSubmitted: (value) {
                            submitMethod(context);
                          },
                        ),
                        state.error.isEmpty
                            ? Container()
                            : Text(
                                state.error,
                                style: TextStyle(color: Colors.red),
                              ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RoundedElevatedButton(
                            onPressed: () {
                              submitMethod(context);
                            },
                            child: Text('Login'),
                          ),
                        )
                      ],
                    )),
              ),
              Flexible(child: Container()),
            ],
          );
        },
      ),
    );
  }

  void submitMethod(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      context.read<LogInBloc>().add(LogInEvent.logIn());
    }
  }
}
