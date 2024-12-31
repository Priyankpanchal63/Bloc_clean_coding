import 'package:bloc_clean_coding/confi/appi_urls.dart';
import 'package:bloc_clean_coding/data/network/netword_sevices_api.dart';
import 'package:bloc_clean_coding/model/movies/movies.dart';
import 'package:bloc_clean_coding/model/user/user_model.dart';
import 'package:bloc_clean_coding/repository/movies/movies_repository.dart';



class MoviesHttpRepository implements MoviesRepository{
  final  _apiService=NetworkServiceApi();
  @override
  Future<MovieListModel>fetchMoviesList()async{
    final response=await _apiService.getApi(AppUrl.moviesApi);
    return MovieListModel.fromJson(response);
  }
}