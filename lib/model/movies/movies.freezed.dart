// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieListModel _$MovieListModelFromJson(Map<String, dynamic> json) {
  return _MovieListModel.fromJson(json);
}

/// @nodoc
mixin _$MovieListModel {
  String get total =>
      throw _privateConstructorUsedError; // Total number of movies
  int get page => throw _privateConstructorUsedError; // Current page number
  int get pages => throw _privateConstructorUsedError; // Total number of pages
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShows => throw _privateConstructorUsedError;

  /// Serializes this MovieListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieListModelCopyWith<MovieListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListModelCopyWith<$Res> {
  factory $MovieListModelCopyWith(
          MovieListModel value, $Res Function(MovieListModel) then) =
      _$MovieListModelCopyWithImpl<$Res, MovieListModel>;
  @useResult
  $Res call(
      {String total,
      int page,
      int pages,
      @JsonKey(name: 'tv_shows') List<TvShows> tvShows});
}

/// @nodoc
class _$MovieListModelCopyWithImpl<$Res, $Val extends MovieListModel>
    implements $MovieListModelCopyWith<$Res> {
  _$MovieListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShows = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShows: null == tvShows
          ? _value.tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShows>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieListModelImplCopyWith<$Res>
    implements $MovieListModelCopyWith<$Res> {
  factory _$$MovieListModelImplCopyWith(_$MovieListModelImpl value,
          $Res Function(_$MovieListModelImpl) then) =
      __$$MovieListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String total,
      int page,
      int pages,
      @JsonKey(name: 'tv_shows') List<TvShows> tvShows});
}

/// @nodoc
class __$$MovieListModelImplCopyWithImpl<$Res>
    extends _$MovieListModelCopyWithImpl<$Res, _$MovieListModelImpl>
    implements _$$MovieListModelImplCopyWith<$Res> {
  __$$MovieListModelImplCopyWithImpl(
      _$MovieListModelImpl _value, $Res Function(_$MovieListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShows = null,
  }) {
    return _then(_$MovieListModelImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShows: null == tvShows
          ? _value._tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShows>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieListModelImpl implements _MovieListModel {
  _$MovieListModelImpl(
      {this.total = '',
      this.page = 0,
      this.pages = 0,
      @JsonKey(name: 'tv_shows') final List<TvShows> tvShows = const []})
      : _tvShows = tvShows;

  factory _$MovieListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieListModelImplFromJson(json);

  @override
  @JsonKey()
  final String total;
// Total number of movies
  @override
  @JsonKey()
  final int page;
// Current page number
  @override
  @JsonKey()
  final int pages;
// Total number of pages
  final List<TvShows> _tvShows;
// Total number of pages
  @override
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShows {
    if (_tvShows is EqualUnmodifiableListView) return _tvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShows);
  }

  @override
  String toString() {
    return 'MovieListModel(total: $total, page: $page, pages: $pages, tvShows: $tvShows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other._tvShows, _tvShows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages,
      const DeepCollectionEquality().hash(_tvShows));

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListModelImplCopyWith<_$MovieListModelImpl> get copyWith =>
      __$$MovieListModelImplCopyWithImpl<_$MovieListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieListModelImplToJson(
      this,
    );
  }
}

abstract class _MovieListModel implements MovieListModel {
  factory _MovieListModel(
          {final String total,
          final int page,
          final int pages,
          @JsonKey(name: 'tv_shows') final List<TvShows> tvShows}) =
      _$MovieListModelImpl;

  factory _MovieListModel.fromJson(Map<String, dynamic> json) =
      _$MovieListModelImpl.fromJson;

  @override
  String get total; // Total number of movies
  @override
  int get page; // Current page number
  @override
  int get pages; // Total number of pages
  @override
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShows;

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieListModelImplCopyWith<_$MovieListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TvShows _$TvShowsFromJson(Map<String, dynamic> json) {
  return _TvShows.fromJson(json);
}

/// @nodoc
mixin _$TvShows {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  String get permalink => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  String get network => throw _privateConstructorUsedError;
  String get imageThumbnailPath => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this TvShows to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TvShowsCopyWith<TvShows> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowsCopyWith<$Res> {
  factory $TvShowsCopyWith(TvShows value, $Res Function(TvShows) then) =
      _$TvShowsCopyWithImpl<$Res, TvShows>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      String permalink,
      String endDate,
      String network,
      String imageThumbnailPath,
      String status});
}

/// @nodoc
class _$TvShowsCopyWithImpl<$Res, $Val extends TvShows>
    implements $TvShowsCopyWith<$Res> {
  _$TvShowsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? permalink = null,
    Object? endDate = null,
    Object? network = null,
    Object? imageThumbnailPath = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _value.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvShowsImplCopyWith<$Res> implements $TvShowsCopyWith<$Res> {
  factory _$$TvShowsImplCopyWith(
          _$TvShowsImpl value, $Res Function(_$TvShowsImpl) then) =
      __$$TvShowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      String permalink,
      String endDate,
      String network,
      String imageThumbnailPath,
      String status});
}

/// @nodoc
class __$$TvShowsImplCopyWithImpl<$Res>
    extends _$TvShowsCopyWithImpl<$Res, _$TvShowsImpl>
    implements _$$TvShowsImplCopyWith<$Res> {
  __$$TvShowsImplCopyWithImpl(
      _$TvShowsImpl _value, $Res Function(_$TvShowsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? permalink = null,
    Object? endDate = null,
    Object? network = null,
    Object? imageThumbnailPath = null,
    Object? status = null,
  }) {
    return _then(_$TvShowsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _value.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvShowsImpl implements _TvShows {
  _$TvShowsImpl(
      {@JsonKey(name: 'name') this.name = '',
      this.permalink = '',
      this.endDate = '',
      this.network = '',
      this.imageThumbnailPath = '',
      this.status = ''});

  factory _$TvShowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowsImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey()
  final String permalink;
  @override
  @JsonKey()
  final String endDate;
  @override
  @JsonKey()
  final String network;
  @override
  @JsonKey()
  final String imageThumbnailPath;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'TvShows(name: $name, permalink: $permalink, endDate: $endDate, network: $network, imageThumbnailPath: $imageThumbnailPath, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.imageThumbnailPath, imageThumbnailPath) ||
                other.imageThumbnailPath == imageThumbnailPath) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, permalink, endDate,
      network, imageThumbnailPath, status);

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowsImplCopyWith<_$TvShowsImpl> get copyWith =>
      __$$TvShowsImplCopyWithImpl<_$TvShowsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowsImplToJson(
      this,
    );
  }
}

abstract class _TvShows implements TvShows {
  factory _TvShows(
      {@JsonKey(name: 'name') final String name,
      final String permalink,
      final String endDate,
      final String network,
      final String imageThumbnailPath,
      final String status}) = _$TvShowsImpl;

  factory _TvShows.fromJson(Map<String, dynamic> json) = _$TvShowsImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  String get permalink;
  @override
  String get endDate;
  @override
  String get network;
  @override
  String get imageThumbnailPath;
  @override
  String get status;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TvShowsImplCopyWith<_$TvShowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
