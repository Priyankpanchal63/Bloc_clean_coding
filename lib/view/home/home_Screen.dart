import 'package:bloc_clean_coding/services/storage/local_storage..dart';
import 'package:flutter/material.dart';

import '../../confi/route/route_name.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Home screen'),
        actions: [
          IconButton(onPressed: (){
            LocalStroage localStroage=LocalStroage();
            localStroage.clearValue('token').then((value){
              localStroage.clearValue('isLogin').then((value){
                Navigator.pushNamed(context, RoutesName.loginScreen);
              });
            });
          }, icon:Icon(Icons.logout))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Center(child: Text("Hello",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
         ],
      ),
    );
  }
}
