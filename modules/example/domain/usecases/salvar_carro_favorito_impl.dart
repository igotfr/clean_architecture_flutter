import 'package:cleanarch/modules/example/domain/entities/carro.dart';
import 'package:cleanarch/modules/example/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:cleanarch/modules/example/domain/usecases/salvar_carro_favorito.dart';
import 'package:dartz/dartz.dart';

class SalvarCarroFavoritoImpl implements SalvarCarroFavorito {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoImpl(this._salvarCarroFavoritoRepository);

  @override
  Future<Either<Exception, bool>> call(Carro carro) async {
    carro.setLogica();
    return await _salvarCarroFavoritoRepository(carro);
  }
}
