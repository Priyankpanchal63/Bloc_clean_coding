import 'dart:async';

import 'package:bloc_clean_coding/confi/route/route_name.dart';
import 'package:bloc_clean_coding/services/sesssion_manager/session_manager.dart';
import 'package:flutter/cupertino.dart';

class SplashServices {
  void islogin(BuildContext context) {
    SessionController().getUserFromPrefrence().then((value) {
      if (SessionController().isLogin ?? false) {
        Timer(
            const Duration(seconds: 3),
                () =>
                Navigator.pushNamedAndRemoveUntil(
                    context, RoutesName.homeScreen, (route) => false));
      } else {
        Timer(
            const Duration(seconds: 3),
                () =>
                Navigator.pushNamedAndRemoveUntil(
                    context, RoutesName.loginScreen, (route) => false));
      }
    }).onError((error, stackTrace) {
      Timer(
          const Duration(seconds: 3),
              () =>
              Navigator.pushNamedAndRemoveUntil(
                  context, RoutesName.loginScreen, (route) => false));
    });
  }
}