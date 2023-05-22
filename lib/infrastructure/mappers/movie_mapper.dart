import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB movieDb) => Movie(
        adult: movieDb.adult,
        backdropPath: (movieDb.backdropPath != '')
            ? 'https://image.tmdb.org/t/p/w500${movieDb.backdropPath}'
            : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwdzSClnmD-vZSJoDvkBpOxePRrZwrMZt0Usw1Dska0SEgGmthncKiilkl0RiQlJ6YDMzsAyGiibE&usqp=CAU&ec=48665698',
        genreIds: movieDb.genreIds.map((e) => e.toString()).toList(),
        id: movieDb.id,
        originalLanguage: movieDb.originalLanguage,
        originalTitle: movieDb.originalTitle,
        overview: movieDb.overview,
        popularity: movieDb.popularity,
        posterPath: (movieDb.posterPath != '')
            ? 'https://image.tmdb.org/t/p/w500${movieDb.posterPath}'
            : 'https://www.movienewz.com/img/films/poster-holder.jpg',
        releaseDate:
            movieDb.releaseDate != null ? movieDb.releaseDate! : DateTime.now(),
        title: movieDb.title,
        video: movieDb.video,
        voteAverage: movieDb.voteAverage,
        voteCount: movieDb.voteCount,
      );

  static Movie movieDetailsToEntity(MovieDetails movieDb) => Movie(
        adult: movieDb.adult,
        backdropPath: (movieDb.backdropPath != '')
            ? 'https://image.tmdb.org/t/p/w500${movieDb.backdropPath}'
            : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwdzSClnmD-vZSJoDvkBpOxePRrZwrMZt0Usw1Dska0SEgGmthncKiilkl0RiQlJ6YDMzsAyGiibE&usqp=CAU&ec=48665698',
        genreIds: movieDb.genres.map((e) => e.name.toString()).toList(),
        id: movieDb.id,
        originalLanguage: movieDb.originalLanguage,
        originalTitle: movieDb.originalTitle,
        overview: movieDb.overview,
        popularity: movieDb.popularity,
        posterPath: (movieDb.posterPath != '')
            ? 'https://image.tmdb.org/t/p/w500${movieDb.posterPath}'
            : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwdzSClnmD-vZSJoDvkBpOxePRrZwrMZt0Usw1Dska0SEgGmthncKiilkl0RiQlJ6YDMzsAyGiibE&usqp=CAU&ec=48665698',
        releaseDate: movieDb.releaseDate,
        title: movieDb.title,
        video: movieDb.video,
        voteAverage: movieDb.voteAverage,
        voteCount: movieDb.voteCount,
      );
}
