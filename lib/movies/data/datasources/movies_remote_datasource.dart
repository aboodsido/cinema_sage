import 'package:cinema_sage/core/errors/exceptions.dart';
import 'package:cinema_sage/core/network/error_message_model.dart';
import 'package:cinema_sage/core/utils/app_constants.dart';
import 'package:cinema_sage/movies/data/models/movie_model.dart';
import 'package:dio/dio.dart';

abstract class BaseMoviesRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}

class MoviesRemoteDataSource implements BaseMoviesRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    var response = await Dio().get(
        '${AppConstants.baseUrl}/movie/now_playing?api_key=${AppConstants.apiKey}');

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data['results'] as List).map(
          (e) => MovieModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    var response = await Dio().get(
        '${AppConstants.baseUrl}/movie/popular?api_key=${AppConstants.apiKey}');

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data['results'] as List).map(
          (e) => MovieModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    var response = await Dio().get(
        '${AppConstants.baseUrl}/movie/top_rated?api_key=${AppConstants.apiKey}');

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data['results'] as List).map(
          (e) => MovieModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
