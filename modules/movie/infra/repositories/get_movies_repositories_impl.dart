import 'package:cleanarch/modules/movie/domain/entities/movie_entity.dart';
import 'package:cleanarch/modules/movie/domain/repositories/get_movies_repository.dart';
import 'package:cleanarch/modules/movie/infra/datasources/get_movies_datasources.dart';
import 'package:dartz/dartz.dart';

class GetMoviesRepositoryImpl implements GetMoviesRepository {
  final GetMoviesDataSource _getMoviesDataSource;
  GetMoviesRepositoryImpl(this._getMoviesDataSource);

  @override
  Future<Either<Exception, MovieEntity>> call() async {
    return await _getMoviesDataSource();
  }
}