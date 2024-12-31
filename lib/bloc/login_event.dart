part of 'login_bloc.dart';

abstract class LoginEvent {}

class EmailChanged extends LoginEvent {
  final String email;
  EmailChanged({required this.email});
}

class PasswordChanged extends LoginEvent {
  final String password;
  PasswordChanged({required this.password});
}

class LoginApi extends LoginEvent {}

class SnackbarDisplayed extends LoginEvent {}
