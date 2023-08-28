import 'package:cinema_sage/movies/domain/entities/movie_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';

abstract class MoviesRepo {
  Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovies();
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies();
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies();
}
