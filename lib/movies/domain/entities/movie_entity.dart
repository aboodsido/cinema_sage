import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int id;
  final String backdropPath;
  final String title;
  final String overview;
  final double voteAverage;
  final int voteCount;
  final int releaseDate;
  final List<int> genreIds;

  const MovieEntity({
    required this.id,
    required this.backdropPath,
    required this.title,
    required this.overview,
    required this.voteAverage,
    required this.voteCount,
    required this.releaseDate,
    required this.genreIds,
  });

  @override
  List<Object?> get props => [
        id,
        backdropPath,
        title,
        overview,
        voteAverage,
        voteCount,
        genreIds,
        releaseDate,
      ];
}
