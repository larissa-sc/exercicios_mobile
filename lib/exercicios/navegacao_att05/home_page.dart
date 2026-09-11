import 'package:flutter/material.dart';
import 'perfil_page.dart';

class HomePage extends StatelessWidget {
  final String nome;

  const HomePage({
    super.key,
    required this.nome,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Olá, $nome!'),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PerfilPage(
                  nome: nome,
                  ),
                ),
                );
              },
              child: const Text('Ver perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
