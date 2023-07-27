import 'package:cleanarch/core/domain/services/http_service.dart';
import 'package:cleanarch/core/infra/services/dio_http_service_impl.dart';
import 'package:cleanarch/modules/movie/domain/repositories/get_movies_repository.dart';
import 'package:cleanarch/modules/movie/domain/usecases/get_movies_usecase.dart';
import 'package:cleanarch/modules/movie/domain/usecases/get_movies_usecase_impl.dart';
import 'package:cleanarch/modules/movie/external/datasources/local/get_movies_local_datasource_decorator_impl.dart';
import 'package:cleanarch/modules/movie/external/datasources/remote/get_movies_remote_datasource_impl.dart';
import 'package:cleanarch/modules/movie/infra/datasources/get_movies_datasources.dart';
import 'package:cleanarch/modules/movie/infra/repositories/get_movies_repositories_impl.dart';
import 'package:cleanarch/modules/movie/presentation/controllers/movie_controller.dart';
import 'package:cleanarch/core/utils/movie_api_utils.dart';
import 'package:get_it/get_it.dart';

class InjectMovie {
  static void init() {
    GetIt getIt = GetIt.instance;

    getIt
    // core
      ..registerLazySingleton<HttpService>(() => DioHttpServiceImpl(MovieAPIUtils.REQUEST_BASE_URL, MovieAPIUtils.REQUEST_HEADERS))
    // datasources
      ..registerLazySingleton<GetMoviesDataSource>(() =>
          GetMoviesLocalDataSourceDecoratorImpl(
              GetMoviesRemoteDatasourceImpl(getIt())))
    // repositories
      ..registerLazySingleton<GetMoviesRepository>(
          () => GetMoviesRepositoryImpl(getIt()))
    // usecases
      ..registerLazySingleton<GetMoviesUseCase>(
          () => GetMoviesUseCaseImpl(getIt()))
    // controllers
      ..registerLazySingleton<MovieController>(() => MovieController(getIt()));
  }
}