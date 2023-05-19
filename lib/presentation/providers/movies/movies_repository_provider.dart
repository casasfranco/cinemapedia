import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_imp.dart';

// Este repositorio es inmutable. Solo lectura.
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImp(MovieDbDatasource());
});
