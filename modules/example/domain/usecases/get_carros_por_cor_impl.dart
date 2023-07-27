import 'package:cleanarch/modules/example/domain/entities/carro.dart';
import 'package:cleanarch/modules/example/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:cleanarch/modules/example/domain/usecases/get_carros_por_cor.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorImpl implements GetCarrosPorCor {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;

  GetCarrosPorCorImpl(this._getCarrosPorCorRepository);

  @override
  Either<Exception, Carro> call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }
}
