import 'package:bloc/bloc.dart';
import 'package:bloc_clean_coding/bloc/movies/movies_event.dart';
import 'package:bloc_clean_coding/bloc/movies/movies_state.dart';
import 'package:bloc_clean_coding/data/response/api_response.dart';

class MoviesBloc extends Bloc<MoviesEvent,MoviesState>{
  MoviesBloc():super(MoviesState(moviesList: ApiResponse.loading())){

  }
}