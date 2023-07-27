import 'package:cleanarch/modules/example/domain/entities/carro.dart';

class CarroDto extends Carro {
  String placa;
  int quantidadeDePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(placa: placa, qtdPortas: quantidadeDePortas, valor: valorFinal);

  Map<String, dynamic> toMap() {
    return {
      'placa': placa,
      'quantidadeDePortas': quantidadeDePortas,
      'valorFinal': valorFinal
    };
  }

  static CarroDto fromMap(Map map) {
    return CarroDto(
        placa: map['placa'],
        quantidadeDePortas: map['quantidadeDePortas'],
        valorFinal: map['valorFinal']);
  }
}
