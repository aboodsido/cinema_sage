import 'package:cinema_sage/movies/domain/entities/movie_entity.dart';
import 'package:cinema_sage/movies/domain/repos/movies_repo.dart';

class GetPopularMoviesUseCase {
  final MoviesRepo moviesRepo;

  GetPopularMoviesUseCase(this.moviesRepo);

  Future<List<MovieEntity>> call() async {
    return await moviesRepo.getPopularMovies();
  }
}
