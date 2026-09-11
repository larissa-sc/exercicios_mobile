class Produto {
  String nome;
  double preco;
  String fabricante;

  Produto(required this.nome, required this.preco, required this.fabricante);

  void infoProduto() {
    print("Informações do Produto:");
    print("Nome: $nome");
    print("Preço: $preco");
    print("Fabricante: $fabricante");
  }
}


class Compras {
  List<Produto> carrinho = [];

  void adicionarProduto(Produto produto) {
    carrinho.add(produto);
  }

  void valorCompra() {
    double total = 0;
    for (var produto in carrinho) {
      total += produto.preco;
    }
    print("Valor total da compra: $total");
  }
}

void cadastrarUsuario({
  required String nome, String statusCadastro = "Ativo";
}){}


Future<String> autenticarUsuario(String email, String senha) async {
  print('Autenticando $email...');
  
  await Future.delayed(const Duration(seconds: 2));
  
  if (senha == '123456') {
    return 'Login realizado com sucesso';
  } else {
    return 'Erro: Credenciais inválidas';
  }
}


class Pessoa {
  String nome;
  String cpf;

  Pessoa({required this.nome, required this.cpf});

  void infoPessoa() {
    print("Informações pessoais:");
    print("Nome: $nome");
    print("CPF: $cpf");
  }
}


class Funcionario extends Pessoa {
  String matricula;
  double salario;

  Funcionario({
    required String nome,
    required String cpf,
    required this.matricula,
    required this.salario,
  }) : super(nome: nome, cpf: cpf);

  void infoFuncionario() {
    infoPessoa();
    print("Matrícula: $matricula");
    print("Salário: $salario");
  }
}


Future<List<Funcionario>> buscarFuncionarios() async {
  await Future.delayed(const Duration(seconds: 2));

  return [
    Funcionario(nome: 'Ana', cpf: '111.222.333-44', matricula: 'F01', salario: 2500.00),
    Funcionario(nome: 'Bruno', cpf: '222.333.444-55', matricula: 'F02', salario: 3200.00),
    Funcionario(nome: 'Camila', cpf: '333.444.555-66', matricula: 'F03', salario: 4500.00),
    Funcionario(nome: 'Diego', cpf: '444.555.666-77', matricula: 'F04', salario: 2800.50),
    Funcionario(nome: 'Eduarda', cpf: '555.666.777-88', matricula: 'F05', salario: 2950.00),
  ];
}

void main() async {
  print('Buscando funcionários no sistema...');

  List<Funcionario> funcionarios = await buscarFuncionarios();

  print('Funcionários com salário maior que R\$2800.50:');

  for (var func in funcionarios) {
    if (func.salario > 2800.50) {
      func.infoFuncionario();
    }
  }
}