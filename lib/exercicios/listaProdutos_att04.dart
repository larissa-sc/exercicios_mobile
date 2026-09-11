import 'package:flutter/material.dart';

class ListaProdutos extends StatelessWidget {
  ListaProdutos({super.key});

  final List<Map<String, dynamic>> produtos = [
    {'nome': 'Vestido', 'preco': 50,},
    {'nome': 'Blusa Feminina', 'preco': 38.90,},
    {'nome': 'Camisa Social Masculina', 'preco': 60,},
    {'nome': 'Calça', 'preco': 145.99,},
    {'nome': 'Gravata', 'preco': 34.50,},
  ];

  @override
  Widget build(BuildContext context) {

    final larguraTela  = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          Text('Largura da tela: $larguraTela'),

          Expanded(
            child: ListView.builder(
              itemCount: produtos.length,
              itemBuilder: (context, index){
                final produto = produtos[index];
                return ListTile(
                  title: Text(produto['nome']),
                  trailing: Text('R\$ ${produto['preco']}'),
                );
              },
            ),
          ),
          
          Center(
            child: ElevatedButton(
                onPressed: () {
                  print('Ação finalizada!');
                },
                child: Text('Finalizar')),
          )
        ],
      ),
    );
  }
}
