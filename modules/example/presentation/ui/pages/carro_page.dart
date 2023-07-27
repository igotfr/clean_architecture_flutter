/*import 'package:cleanarch/layers/data/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:cleanarch/layers/data/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:cleanarch/layers/data/repositories/salvar_carro_favorito_repository_impl.dart';
import 'package:cleanarch/layers/domain/usecases/get_carros_por_cor_impl.dart';
import 'package:cleanarch/layers/domain/usecases/salvar_carro_favorito_impl.dart';*/
import 'package:cleanarch/modules/example/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarroPage extends StatelessWidget {
  final CarroController controller = GetIt.instance.get<CarroController>();
  /*CarroController(
      GetCarrosPorCorImpl(
          GetCarrosPorCorRepositoryImpl(GetCarrosPorCorLocalDatasourceImpl())),
      SalvarCarroFavoritoImpl(SalvarCarroFavoritoRepositoryImpl()));*/

  CarroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(24),
            child: Text(controller.carro.placa)));
  }
}
