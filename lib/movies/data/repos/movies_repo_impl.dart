import 'package:cinema_sage/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../../domain/entities/movie_entity.dart';
import '../../domain/repos/movies_repo.dart';
import '../datasources/movies_remote_datasource.dart';

class MoviesRepoImpl implements MoviesRepo {
  final BaseMoviesRemoteDataSource baseMoviesRemoteDataSource;

  MoviesRepoImpl(this.baseMoviesRemoteDataSource);

  @override
  Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovies() async {
    try {
      final result = await baseMoviesRemoteDataSource.getNowPlayingMovies();
      return right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies() async {
    try {
      final result = await baseMoviesRemoteDataSource.getPopularMovies();
      return right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies() async {
    try {
      final result = await baseMoviesRemoteDataSource.getTopRatedMovies();
      return right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
