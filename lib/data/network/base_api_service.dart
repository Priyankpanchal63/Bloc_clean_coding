abstract class BaseApiServices{

  Future<dynamic>getApi(String Url);

  Future<dynamic>postApi(String url,var data);

  Future<dynamic>putApi(String url,var data);

  Future<dynamic>deleteApi(int id);
}