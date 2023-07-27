import 'package:cleanarch/modules/movie/domain/entities/movie_entity.dart';
import 'package:cleanarch/modules/movie/infra/datasources/get_movies_datasources.dart';
import 'package:cleanarch/modules/movie/infra/dtos/movie_dto.dart';
import 'package:cleanarch/core/domain/services/http_service.dart';
import 'package:cleanarch/core/utils/movie_api_utils.dart';
import 'package:dartz/dartz.dart';

class GetMoviesRemoteDatasourceImpl implements GetMoviesDataSource {
  final HttpService _httpService;
  GetMoviesRemoteDatasourceImpl(this._httpService);

  @override
  Future<Either<Exception, MovieEntity>> call() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      var result = await _httpService.get(MovieAPIUtils.REQUEST_MOVIE_LIST);
      return Right(MovieDto.fromJson(result.data));
    } catch (e) {
      return Left(Exception('Falha no datasource'));
    }
  }
}