import 'package:cleanarch/modules/movie/domain/entities/movie_entity.dart';
import 'package:cleanarch/modules/movie/infra/datasources/get_movies_datasources.dart';
import 'package:dartz/dartz.dart';

class GetMoviesDataSourceDecorator implements GetMoviesDataSource {
  final GetMoviesDataSource _getMoviesDataSource;
  GetMoviesDataSourceDecorator(this._getMoviesDataSource);

  @override
  Future<Either<Exception, MovieEntity>> call() => _getMoviesDataSource();
}