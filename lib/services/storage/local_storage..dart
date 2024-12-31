import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStroage{
  final storage=const FlutterSecureStorage();
  Future<bool>setValue(String key,String value)async{
    await storage.write(key: key, value: value);
    return true;
  }
  Future<dynamic>readValue(String key)async{
    return  await storage.read(key: key);
  }
  Future<dynamic>clearValue(String key)async{
    await storage.read(key: key);
    return true;
  }
}