import 'dart:convert';

import 'package:bloc_clean_coding/model/user/user_model.dart';
import 'package:bloc_clean_coding/services/storage/local_storage..dart';

class SessionController{
  static final SessionController _session=SessionController._internal();
  final LocalStroage localStroage=LocalStroage();
  UserModel user=UserModel();
  bool? isLogin;
  SessionController._internal(){
         isLogin=false;
  }
  factory SessionController(){
    return _session;
  }
  Future<void>saveUserInPrefrence(dynamic user)async{
    localStroage.setValue('token', jsonEncode(user));
    localStroage.setValue('isLogin', 'true');
  }
  Future<void>getUserFromPrefrence()async{
    try{
      var userData=await localStroage.readValue('token');
      var isLogin=await localStroage.readValue('isLogin');
      if(userData.isNotEmpty){
        SessionController().user=UserModel.fromJson(jsonDecode(userData));
      }
      SessionController().isLogin=isLogin=='true'?true:false;
    }catch(e){
      print(e.toString());
      }
  }
}
