void main() {
  //Atividade 1
  // usado quando se tem um valor que pode mudar durante a execução do programa
  var telefone = 123456789;
  // usado quando se tem um valor fixo desde o início da execução do programa
  const String nome = 'João';
  // usado quando se tem um valor que não muda durante a execução do programa e pode ou não ser conhecido apenas durante a compilação
  // podendo assumir um valor nulo
  final int idade;
  //pode receber uma função com o cálculo da idade a partir da data de nascimento dentro de um programa


  //Atividade 2
  List<String> listaNomes = ['João', 'Alice', 'José', 'Ana'];
  listaNomes.add('Pedro');
  for (String nome in listaNomes) {
    if (nome[0] == 'A') {
      print(nome);
    }
  }


  //Atividade 3
  Map<String, dynamic> aluno1 = {
    'Nome': 'Lucas',
    'Idade': 27,
    'Matrícula': '2026112345'
  };

  for (String chave in aluno1.keys) {
    print('$chave: ${aluno1[chave]}');
  }


  //Atividade 4
  List<int?> numeros = [10, 24, null, 4, null, 9];
  int soma = 0;
  int count = 0;
  for (int? numero in numeros) {
    if (numero != null) {
      soma = numero + soma;
      count++;
    }
  }
  print('A média dos números é: ${soma / count}');
}