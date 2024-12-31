import 'package:bloc_clean_coding/confi/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/login_bloc.dart';
import '../../../utils/flush_bar_helper.dart';
import '../../../utils/enum.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (current, previous) => current.postApiStatus != previous.postApiStatus,
      listener: (context, state) {
        // Listen for postApiStatus changes and handle the flushbars accordingly
        if (state.postApiStatus == PostApiStatus.loading) {
          // Show loading Flushbar
          FlushbarHelper.flushBarLoadingMessage("Submitting...", context);
        }

        if (state.postApiStatus == PostApiStatus.success) {
          // Show success Flushbar
          Navigator.pushNamed(context, RoutesName.homeScreen);
          FlushbarHelper.flushBarSuccessMessage("Login Successful", context);
        }

        if (state.postApiStatus == PostApiStatus.error) {
          // Show error Flushbar
          String errorMessage = state.message ?? "An error occurred";
          FlushbarHelper.flushBarErrorMessage(errorMessage, context);
        }

        // Hide the current SnackBar after showing the Flushbar
        ScaffoldMessenger.of(context)..hideCurrentSnackBar();
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (current, previous) => current.postApiStatus != previous.postApiStatus,
        builder: (context, state) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              // Validate the form before triggering the login
              if (formKey.currentState!.validate()) {
                context.read<LoginBloc>().add(LoginApi());
              }
            },
            child: state.postApiStatus == PostApiStatus.loading
                ? const CircularProgressIndicator()
                : const Text(
              'Login',
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
