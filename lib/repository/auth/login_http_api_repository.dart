import 'package:bloc_clean_coding/confi/appi_urls.dart';
import 'package:bloc_clean_coding/data/network/netword_sevices_api.dart';
import 'package:bloc_clean_coding/model/user/user_model.dart';

import 'login_Repository.dart';

class LoginHttpRepository implements LoginRepository{
  final  _api=NetworkServiceApi();
  @override
  Future<UserModel> loginApi(dynamic data)async{
    final response =await _api.postApi(AppUrl.loginApi, data);
    return UserModel.fromJson(response);
  }

}