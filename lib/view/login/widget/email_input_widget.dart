import 'package:bloc_clean_coding/utils/validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/login_bloc.dart';

class EmailInputWidget extends StatelessWidget {
  var emailFocusedNode = FocusNode();

  EmailInputWidget({Key? key, required this.emailFocusedNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current,previous)=>current.email!=previous.email,
      builder: (context, state) {
        return TextFormField(
          focusNode: emailFocusedNode,
          decoration: const InputDecoration(
              hintText: 'Email', border: OutlineInputBorder()
          ),
          onChanged: (value) {
            context.read<LoginBloc>().add(EmailChanged(email: value));
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter Email';
            }
            if(!Validations.emailValidation(value)){
              return 'Email is not Correct';
            }
            return null;
          },
          onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
