import 'package:cleanarch/modules/example/domain/entities/carro.dart';
import 'package:cleanarch/modules/example/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:cleanarch/modules/example/infra/datasources/get_carros_por_cor_datasource.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorRepositoryImpl implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDatasource _getCarrosPorCorDatasource;

  GetCarrosPorCorRepositoryImpl(this._getCarrosPorCorDatasource);

  @override
  Either<Exception, Carro> call(String cor) {
    // chamamos a API e ela respondeu um json
    return _getCarrosPorCorDatasource(cor);
  }
}
