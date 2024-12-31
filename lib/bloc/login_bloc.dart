import 'package:bloc/bloc.dart';
import 'package:bloc_clean_coding/services/sesssion_manager/session_manager.dart';
import 'package:bloc_clean_coding/utils/enum.dart';
import '../repository/auth/login_Repository.dart';

part 'login_state.dart';
part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  LoginRepository loginRepository;

  LoginBloc({required this.loginRepository}) : super(LoginState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginApi>(_onLoginApi);
    on<SnackbarDisplayed>((event, emit) {
      emit(state.copyWith(hasShownSnackbar: true));
    });
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email, hasShownSnackbar: false));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password, hasShownSnackbar: false));
  }

  void _onLoginApi(LoginApi event, Emitter<LoginState> emit) async {
    final data = {"email": state.email, "password": state.password};
    emit(state.copyWith(postApiStatus: PostApiStatus.loading, hasShownSnackbar: false));

    try {
      final value = await loginRepository.loginApi(data);
      if (value.error.isNotEmpty) {
        emit(state.copyWith(
            message: value.error,
            postApiStatus: PostApiStatus.error,
            hasShownSnackbar: false));
      } else {
        await SessionController().saveUserInPrefrence(value);
        await SessionController().getUserFromPrefrence();
        emit(state.copyWith(
            message: 'Login successful',
            postApiStatus: PostApiStatus.success,
            hasShownSnackbar: false));
      }
    } catch (error) {
      emit(state.copyWith(
          message: 'An error occurred: $error',
          postApiStatus: PostApiStatus.error,
          hasShownSnackbar: false));
    }
  }
}
