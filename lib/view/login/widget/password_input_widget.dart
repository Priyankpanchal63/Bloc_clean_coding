import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/login_bloc.dart';

class PasswordInputWidget extends StatelessWidget {
  var passwordFocusedNode = FocusNode();

  PasswordInputWidget({super.key, required this.passwordFocusedNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current,previous)=>current.password!=previous.password,
      builder: (context, state) {
        return TextFormField(
          focusNode: passwordFocusedNode,
          obscureText: true,
          decoration: const InputDecoration(
              hintText: 'Password', border: OutlineInputBorder()
          ),
          onChanged: (value) {
            context.read<LoginBloc>().add(PasswordChanged(password: value));
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter Password';
            }
            if(value.length<6){
              return 'please enter password greater then 6 character';
            }
            return null;
          },
          onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
