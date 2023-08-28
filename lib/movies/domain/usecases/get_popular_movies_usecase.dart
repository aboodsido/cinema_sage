import 'package:cinema_sage/movies/domain/entities/movie_entity.dart';
import 'package:cinema_sage/movies/domain/repos/movies_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';

class GetPopularMoviesUseCase {
  final MoviesRepo moviesRepo;

  GetPopularMoviesUseCase(this.moviesRepo);

  Future<Either<Failure, List<MovieEntity>>> call() async {
    return await moviesRepo.getPopularMovies();
  }
}
