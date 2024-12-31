import 'package:bloc_clean_coding/confi/appi_urls.dart';
import 'package:bloc_clean_coding/data/network/netword_sevices_api.dart';
import 'package:bloc_clean_coding/model/user/user_model.dart';
import 'package:bloc_clean_coding/repository/auth/login_Repository.dart';

class LoginMockRepository implements LoginRepository{

  Future<UserModel> loginApi(dynamic data)async{
    await Future.delayed(Duration(seconds: 2));
    final response ={
      'token':'irvbrbNCWlaw'
    };
    return UserModel.fromJson(response);
  }

}