import 'package:freezed_annotation/freezed_annotation.dart'; // Importing freezed_annotation package

part 'movies.freezed.dart'; // Importing generated code for Freezed classes
part 'movies.g.dart'; // Importing generated code for JSON serialization

/// Freezed class representing a list of movies.
@freezed
class MovieListModel with _$MovieListModel {
  factory MovieListModel({
    @Default('') String total, // Total number of movies
    @Default(0) int page, // Current page number
    @Default(0) int pages, // Total number of pages
    @Default([]) @JsonKey(name: 'tv_shows') List<TvShows> tvShows, // List of TV shows
  }) = _MovieListModel;

  factory MovieListModel.fromJson(Map<String, dynamic> json) =>
      _$MovieListModelFromJson(json);
}

@freezed
class TvShows with _$TvShows {
  factory TvShows({
    @JsonKey(name: 'name') @Default('') String name,
    @Default('') String permalink,
    @Default('') String endDate,
    @Default('') String network,
    @Default('') String imageThumbnailPath,
    @Default('') String status,
  }) = _TvShows;

  factory TvShows.fromJson(Map<String, dynamic> json) =>
      _$TvShowsFromJson(json);
}
