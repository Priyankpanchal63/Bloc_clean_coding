import 'package:bloc_clean_coding/confi/appi_urls.dart';
import 'package:bloc_clean_coding/data/network/netword_sevices_api.dart';
import 'package:bloc_clean_coding/model/user/user_model.dart';

abstract class LoginRepository{
  @override
  Future<UserModel> loginApi(dynamic data);
  }
