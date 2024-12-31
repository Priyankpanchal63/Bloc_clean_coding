import 'package:bloc_clean_coding/repository/auth/login_Repository.dart';
import 'package:bloc_clean_coding/repository/auth/login_http_api_repository.dart';
import 'package:bloc_clean_coding/repository/auth/login_mock_api_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'confi/route/route.dart';
import 'confi/route/route_name.dart';
GetIt getIt=GetIt.instance;

void main() {
   servicesLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
void servicesLocator(){
  getIt.registerLazySingleton<LoginRepository>(()=>LoginHttpRepository());
}