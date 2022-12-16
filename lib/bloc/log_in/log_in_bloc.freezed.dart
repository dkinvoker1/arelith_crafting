// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'log_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LogInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login) updateLogin,
    required TResult Function(String password) updatePassword,
    required TResult Function() logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String login)? updateLogin,
    TResult Function(String password)? updatePassword,
    TResult Function()? logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login)? updateLogin,
    TResult Function(String password)? updatePassword,
    TResult Function()? logIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_LogIn value) logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LogIn value)? logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LogIn value)? logIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInEventCopyWith<$Res> {
  factory $LogInEventCopyWith(
          LogInEvent value, $Res Function(LogInEvent) then) =
      _$LogInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInEventCopyWithImpl<$Res> implements $LogInEventCopyWith<$Res> {
  _$LogInEventCopyWithImpl(this._value, this._then);

  final LogInEvent _value;
  // ignore: unused_field
  final $Res Function(LogInEvent) _then;
}

/// @nodoc
abstract class _$$_UpdateLoginCopyWith<$Res> {
  factory _$$_UpdateLoginCopyWith(
          _$_UpdateLogin value, $Res Function(_$_UpdateLogin) then) =
      __$$_UpdateLoginCopyWithImpl<$Res>;
  $Res call({String login});
}

/// @nodoc
class __$$_UpdateLoginCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
    implements _$$_UpdateLoginCopyWith<$Res> {
  __$$_UpdateLoginCopyWithImpl(
      _$_UpdateLogin _value, $Res Function(_$_UpdateLogin) _then)
      : super(_value, (v) => _then(v as _$_UpdateLogin));

  @override
  _$_UpdateLogin get _value => super._value as _$_UpdateLogin;

  @override
  $Res call({
    Object? login = freezed,
  }) {
    return _then(_$_UpdateLogin(
      login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateLogin implements _UpdateLogin {
  const _$_UpdateLogin(this.login);

  @override
  final String login;

  @override
  String toString() {
    return 'LogInEvent.updateLogin(login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateLogin &&
            const DeepCollectionEquality().equals(other.login, login));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(login));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateLoginCopyWith<_$_UpdateLogin> get copyWith =>
      __$$_UpdateLoginCopyWithImpl<_$_UpdateLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login) updateLogin,
    required TResult Function(String password) updatePassword,
    required TResult Function() logIn,
  }) {
    return updateLogin(login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String login)? updateLogin,
    TResult Function(String password)? updatePassword,
    TResult Function()? logIn,
  }) {
    return updateLogin?.call(login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login)? updateLogin,
    TResult Function(String password)? updatePassword,
    TResult Function()? logIn,
    required TResult orElse(),
  }) {
    if (updateLogin != null) {
      return updateLogin(login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_LogIn value) logIn,
  }) {
    return updateLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LogIn value)? logIn,
  }) {
    return updateLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LogIn value)? logIn,
    required TResult orElse(),
  }) {
    if (updateLogin != null) {
      return updateLogin(this);
    }
    return orElse();
  }
}

abstract class _UpdateLogin implements LogInEvent {
  const factory _UpdateLogin(final String login) = _$_UpdateLogin;

  String get login => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateLoginCopyWith<_$_UpdateLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePasswordCopyWith<$Res> {
  factory _$$_UpdatePasswordCopyWith(
          _$_UpdatePassword value, $Res Function(_$_UpdatePassword) then) =
      __$$_UpdatePasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$_UpdatePasswordCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements _$$_UpdatePasswordCopyWith<$Res> {
  __$$_UpdatePasswordCopyWithImpl(
      _$_UpdatePassword _value, $Res Function(_$_UpdatePassword) _then)
      : super(_value, (v) => _then(v as _$_UpdatePassword));

  @override
  _$_UpdatePassword get _value => super._value as _$_UpdatePassword;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$_UpdatePassword(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdatePassword implements _UpdatePassword {
  const _$_UpdatePassword(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LogInEvent.updatePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePassword &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_UpdatePasswordCopyWith<_$_UpdatePassword> get copyWith =>
      __$$_UpdatePasswordCopyWithImpl<_$_UpdatePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login) updateLogin,
    required TResult Function(String password) updatePassword,
    required TResult Function() logIn,
  }) {
    return updatePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String login)? updateLogin,
    TResult Function(String password)? updatePassword,
    TResult Function()? logIn,
  }) {
    return updatePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login)? updateLogin,
    TResult Function(String password)? updatePassword,
    TResult Function()? logIn,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_LogIn value) logIn,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LogIn value)? logIn,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LogIn value)? logIn,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements LogInEvent {
  const factory _UpdatePassword(final String password) = _$_UpdatePassword;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdatePasswordCopyWith<_$_UpdatePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogInCopyWith<$Res> {
  factory _$$_LogInCopyWith(_$_LogIn value, $Res Function(_$_LogIn) then) =
      __$$_LogInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogInCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
    implements _$$_LogInCopyWith<$Res> {
  __$$_LogInCopyWithImpl(_$_LogIn _value, $Res Function(_$_LogIn) _then)
      : super(_value, (v) => _then(v as _$_LogIn));

  @override
  _$_LogIn get _value => super._value as _$_LogIn;
}

/// @nodoc

class _$_LogIn implements _LogIn {
  const _$_LogIn();

  @override
  String toString() {
    return 'LogInEvent.logIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login) updateLogin,
    required TResult Function(String password) updatePassword,
    required TResult Function() logIn,
  }) {
    return logIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String login)? updateLogin,
    TResult Function(String password)? updatePassword,
    TResult Function()? logIn,
  }) {
    return logIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login)? updateLogin,
    TResult Function(String password)? updatePassword,
    TResult Function()? logIn,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_LogIn value) logIn,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LogIn value)? logIn,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LogIn value)? logIn,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _LogIn implements LogInEvent {
  const factory _LogIn() = _$_LogIn;
}

/// @nodoc
mixin _$LogInState {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String login, String password, String error, bool isLoggedIn)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String login, String password, String error, bool isLoggedIn)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String login, String password, String error, bool isLoggedIn)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LogInState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInStateCopyWith<LogInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInStateCopyWith<$Res> {
  factory $LogInStateCopyWith(
          LogInState value, $Res Function(LogInState) then) =
      _$LogInStateCopyWithImpl<$Res>;
  $Res call({String login, String password, String error, bool isLoggedIn});
}

/// @nodoc
class _$LogInStateCopyWithImpl<$Res> implements $LogInStateCopyWith<$Res> {
  _$LogInStateCopyWithImpl(this._value, this._then);

  final LogInState _value;
  // ignore: unused_field
  final $Res Function(LogInState) _then;

  @override
  $Res call({
    Object? login = freezed,
    Object? password = freezed,
    Object? error = freezed,
    Object? isLoggedIn = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LogInStateCopyWith<$Res>
    implements $LogInStateCopyWith<$Res> {
  factory _$$_LogInStateCopyWith(
          _$_LogInState value, $Res Function(_$_LogInState) then) =
      __$$_LogInStateCopyWithImpl<$Res>;
  @override
  $Res call({String login, String password, String error, bool isLoggedIn});
}

/// @nodoc
class __$$_LogInStateCopyWithImpl<$Res> extends _$LogInStateCopyWithImpl<$Res>
    implements _$$_LogInStateCopyWith<$Res> {
  __$$_LogInStateCopyWithImpl(
      _$_LogInState _value, $Res Function(_$_LogInState) _then)
      : super(_value, (v) => _then(v as _$_LogInState));

  @override
  _$_LogInState get _value => super._value as _$_LogInState;

  @override
  $Res call({
    Object? login = freezed,
    Object? password = freezed,
    Object? error = freezed,
    Object? isLoggedIn = freezed,
  }) {
    return _then(_$_LogInState(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LogInState implements _LogInState {
  const _$_LogInState(
      {this.login = '',
      this.password = '',
      this.error = '',
      this.isLoggedIn = false});

  @override
  @JsonKey()
  final String login;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final bool isLoggedIn;

  @override
  String toString() {
    return 'LogInState.initial(login: $login, password: $password, error: $error, isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogInState &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.isLoggedIn, isLoggedIn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(isLoggedIn));

  @JsonKey(ignore: true)
  @override
  _$$_LogInStateCopyWith<_$_LogInState> get copyWith =>
      __$$_LogInStateCopyWithImpl<_$_LogInState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String login, String password, String error, bool isLoggedIn)
        initial,
  }) {
    return initial(login, password, error, isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String login, String password, String error, bool isLoggedIn)?
        initial,
  }) {
    return initial?.call(login, password, error, isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String login, String password, String error, bool isLoggedIn)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(login, password, error, isLoggedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LogInState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LogInState implements LogInState {
  const factory _LogInState(
      {final String login,
      final String password,
      final String error,
      final bool isLoggedIn}) = _$_LogInState;

  @override
  String get login => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get error => throw _privateConstructorUsedError;
  @override
  bool get isLoggedIn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LogInStateCopyWith<_$_LogInState> get copyWith =>
      throw _privateConstructorUsedError;
}
