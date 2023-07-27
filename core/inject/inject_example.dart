import 'package:cleanarch/modules/example/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:cleanarch/modules/example/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:cleanarch/modules/example/domain/usecases/get_carros_por_cor.dart';
import 'package:cleanarch/modules/example/domain/usecases/get_carros_por_cor_impl.dart';
import 'package:cleanarch/modules/example/domain/usecases/salvar_carro_favorito.dart';
import 'package:cleanarch/modules/example/domain/usecases/salvar_carro_favorito_impl.dart';
import 'package:cleanarch/modules/example/external/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:cleanarch/modules/example/infra/datasources/get_carros_por_cor_datasource.dart';
import 'package:cleanarch/modules/example/infra/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:cleanarch/modules/example/infra/repositories/salvar_carro_favorito_repository_impl.dart';
import 'package:cleanarch/modules/example/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class InjectExample {
  static void init() {
    GetIt getIt = GetIt.instance;

    getIt
    // datasources
      ..registerLazySingleton<GetCarrosPorCorDatasource>(
          () => GetCarrosPorCorLocalDatasourceImpl())
    // repositories
      ..registerLazySingleton<GetCarrosPorCorRepository>(
          () => GetCarrosPorCorRepositoryImpl(getIt()))
      ..registerLazySingleton<SalvarCarroFavoritoRepository>(
          () => SalvarCarroFavoritoRepositoryImpl())
    // usecases
      ..registerLazySingleton<GetCarrosPorCor>(
          () => GetCarrosPorCorImpl(getIt()))
      ..registerLazySingleton<SalvarCarroFavorito>(
          () => SalvarCarroFavoritoImpl(getIt()))
    // controllers
      ..registerFactory<CarroController>(
          () => CarroController(getIt(), getIt()));
  }
}
