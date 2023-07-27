import 'package:cleanarch/modules/example/domain/entities/carro.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorRepository {
  Either<Exception, Carro> call(String cor);
}