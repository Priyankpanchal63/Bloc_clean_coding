import 'package:bloc_clean_coding/confi/component/internet_exception_widget.dart';
import 'package:bloc_clean_coding/data/exceptions/app_exception.dart';
import 'package:bloc_clean_coding/services/splash/splash_services.dart';
import 'package:flutter/material.dart';

import '../../confi/component/roundButton.dart';
import '../../confi/route/route_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices _splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashServices.islogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Splash screen'),
        ),
        body: Center(
          child: Text(
            'Welcome to Clean Code Demo',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
          ),
        ));
  }
}
