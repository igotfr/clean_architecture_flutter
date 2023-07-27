import 'package:cleanarch/modules/movie/domain/entities/movie_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetMoviesDataSource {
  Future<Either<Exception, MovieEntity>> call();
}