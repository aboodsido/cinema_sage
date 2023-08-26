import 'package:cinema_sage/movies/domain/entities/movie_entity.dart';
import 'package:cinema_sage/movies/domain/repos/movies_repo.dart';

class GetTopRatedMoviesUseCase {
  final MoviesRepo moviesRepo;

  GetTopRatedMoviesUseCase(this.moviesRepo);

  Future<List<MovieEntity>> call() async {
    return await moviesRepo.getTopRatedMovies();
  }
}
