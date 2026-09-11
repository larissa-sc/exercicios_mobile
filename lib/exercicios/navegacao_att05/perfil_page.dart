import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  final String nome;

  const PerfilPage({
    super.key,
    required this.nome,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Perfil do usuário',
            style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 20),

            Text('Nome: $nome'),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}