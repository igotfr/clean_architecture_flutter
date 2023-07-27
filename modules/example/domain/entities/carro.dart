class Carro {
  String placa;
  int qtdPortas;
  double valor;

  Carro({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  });

  double get valorReal {
    return valor * qtdPortas;
  }

  void setLogica() {
    if (valorReal > 10000.00) {
      valor *= 2;
    }
  }
}
