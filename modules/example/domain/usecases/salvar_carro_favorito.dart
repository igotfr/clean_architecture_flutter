import 'package:cleanarch/modules/example/domain/entities/carro.dart';
import 'package:dartz/dartz.dart';

abstract class SalvarCarroFavorito {
  Future<Either<Exception, bool>> call(Carro carro);
}