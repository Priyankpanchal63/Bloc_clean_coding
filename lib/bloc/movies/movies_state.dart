import 'package:bloc_clean_coding/data/response/api_response.dart';

import '../../model/movies/movies.dart';

class MoviesState {
  late ApiResponse<MovieListModel> moviesList;

  MoviesState({required this.moviesList});

  MoviesState copyWith({ApiResponse<MovieListModel>? moviesList}) {
    return MoviesState(moviesList: moviesList ?? this.moviesList);
  }
}
