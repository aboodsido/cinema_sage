import 'package:cinema_sage/movies/domain/entities/movie_entity.dart';

abstract class MoviesRepo {
  Future<List<MovieEntity>> getNowPlayingMovies();
  Future<List<MovieEntity>> getPopularMovies();
  Future<List<MovieEntity>> getTopRatedMovies();
}
