import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CadastroUser extends StatefulWidget {
  const CadastroUser({super.key});

  @override
  State<CadastroUser> createState() => _CadastroUserState();
}

class _CadastroUserState extends State<CadastroUser> {

  final _nomecontroller = TextEditingController();
  final _idadecontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String mensagem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de teste'),
      ),

      body: Form(
        key: _formKey,

        child: Column(
            children: [
              const SizedBox(height: 10),

              TextFormField(
                controller: _nomecontroller,
                decoration: const InputDecoration(
                  hintText: 'Nome:',
                ),
                validator: (value){
                  if (value == null || value.isEmpty) {
                    return 'Digite seu nome';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10),

              TextFormField(
                controller: _idadecontroller,
                decoration: const InputDecoration(
                  hintText: 'Idade:',
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(2),
                ],
              ),

              ElevatedButton(
                onPressed: (){
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }
                  setState(() {
                    mensagem = 'Olá, ${_nomecontroller.text}';
                  });
                },
                child: const Text('Mostrar nome'),
              ),

              Text(mensagem),
            ]
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nomecontroller.dispose();
    _idadecontroller.dispose();
    super.dispose();
  }
}
