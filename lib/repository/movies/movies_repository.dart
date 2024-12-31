import '../../model/movies/movies.dart';

abstract class MoviesRepository{
  Future<MovieListModel>fetchMoviesList();
}