part of 'login_bloc.dart';

class LoginState {
  final String email;
  final String password;
  final String? message;
  final PostApiStatus postApiStatus;
  final bool hasShownSnackbar;

  LoginState({
    this.email = '',
    this.password = '',
    this.message,
    this.postApiStatus = PostApiStatus.initial,
    this.hasShownSnackbar = false,
  });

  LoginState copyWith({
    String? email,
    String? password,
    String? message,
    PostApiStatus? postApiStatus,
    bool? hasShownSnackbar,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      message: message ?? this.message,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      hasShownSnackbar: hasShownSnackbar ?? this.hasShownSnackbar,
    );
  }
}
