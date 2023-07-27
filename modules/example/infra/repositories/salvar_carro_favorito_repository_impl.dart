import 'package:cleanarch/modules/example/domain/entities/carro.dart';
import 'package:cleanarch/modules/example/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:dartz/dartz.dart';

class SalvarCarroFavoritoRepositoryImpl
    implements SalvarCarroFavoritoRepository {
  @override
  Future<Either<Exception, bool>> call(Carro carro) async {
    try {
      return Right(carro.valor > 0);
    } catch (e) {
      return Left(Exception('repository error'));
    }
  }
}
