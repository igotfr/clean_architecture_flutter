import 'package:cleanarch/modules/example/domain/entities/carro.dart';
import 'package:cleanarch/modules/example/domain/usecases/get_carros_por_cor.dart';
import 'package:cleanarch/modules/example/domain/usecases/salvar_carro_favorito.dart';

class CarroController {
  final GetCarrosPorCor _getCarrosPorCor;
  final SalvarCarroFavorito _salvarCarroFavorito;

  CarroController(this._getCarrosPorCor, this._salvarCarroFavorito) {
    getCarrosPorCor('vermelho');
  }

  late Carro carro;

  void getCarrosPorCor(String cor) {
    var result = _getCarrosPorCor(cor);
    result.fold((error) => print(error.toString()), (success) => carro = success);
  }

  void salvarCarroFavorito(Carro carro) async {
    var result = await _salvarCarroFavorito(carro);
  }
}
