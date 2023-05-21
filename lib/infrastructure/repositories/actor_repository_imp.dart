import 'package:cinemapedia/domain/datasources/actors_datasouce.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/domain/repositories/actors_repository.dart';

class ActorRepositoryImp extends ActorsRepository {
// no ponemos ActorMovieDbDatasource por ejemplo para poder hacerlo mas generico.
// Si pongo ActorMovieDbDatasource solo va a funcionar con moviedb entonces si cambio de donde
// traigo la info esto se rompe y es por eso que existe el ActorsDatasource agnostico a si es moviedb o no
  final ActorsDatasource datasource;

  ActorRepositoryImp(this.datasource);

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) {
    return datasource.getActorsByMovie(movieId);
  }
}
