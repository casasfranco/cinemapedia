import 'package:cinemapedia/infrastructure/mappers/actor_mapper.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';
import 'package:dio/dio.dart';
import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/actors_datasouce.dart';
import 'package:cinemapedia/domain/entities/actor.dart';

class ActorMovieDbDatasource extends ActorsDatasource {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Enviroment.theMovieDbKey,
      'language': 'es-MX',
    },
  ));

  List<Actor> _jsonToMovies(Map<String, dynamic> json) {
    final creditsDbResponse = CreditsResponse.fromJson(json);

    final List<Actor> cast = creditsDbResponse.cast
        .map((cast) => ActorMapper.castToEntity(cast))
        .toList();

    return cast;
  }

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async {
    final response = await dio.get('/movie/$movieId/credits');

    return _jsonToMovies(response.data);
  }
}
