import 'package:cleanarch/modules/movie/domain/entities/movie_entity.dart';
import 'package:cleanarch/modules/movie/domain/repositories/get_movies_repository.dart';
import 'package:cleanarch/modules/movie/domain/usecases/get_movies_usecase.dart';
import 'package:dartz/dartz.dart';

class GetMoviesUseCaseImpl implements GetMoviesUseCase {
  final GetMoviesRepository _getMoviesRepository;
  GetMoviesUseCaseImpl(this._getMoviesRepository);

  @override
  Future<Either<Exception, MovieEntity>> call() async {
    return await _getMoviesRepository();
  }
}