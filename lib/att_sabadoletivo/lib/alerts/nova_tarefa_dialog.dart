import 'package:flutter/material.dart';

import '../models/tarefa.dart';

class NovaTarefaDialog extends StatefulWidget {

  final ValueChanged<Tarefa> onSalvar;

  const NovaTarefaDialog({
    super.key,
    required this.onSalvar
  });

  @override
  State<NovaTarefaDialog> createState() => _NovaTarefaDialogState();
}

class _NovaTarefaDialogState extends State<NovaTarefaDialog> {

  final _formKey = GlobalKey<FormState>();
  final _titulo = TextEditingController();
  final _descricao = TextEditingController();

  @override
  void dispose() {
    _titulo.dispose();
    _descricao.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          title: Text('Nova Tarefa'),
          content: SizedBox(
            width: double.maxFinite,
            child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children:[
                TextFormField(
                  controller: _titulo,
                  decoration: const InputDecoration(
                      labelText: 'Título da Tarefa'
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Título obrigatório';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 10),

                TextFormField(
                  controller: _descricao,
                  decoration: const InputDecoration(
                      labelText: 'Descrição da Tarefa'
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Descrição obrigatória';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                ElevatedButton(
                    onPressed: (){
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }

                      final Tarefa tarefa = Tarefa(titulo: _titulo.text, descricao: _descricao.text);

                      widget.onSalvar(tarefa);

                      _titulo.clear();
                      _descricao.clear();

                      Navigator.pop(context);
                    },
                    child: Text('Salvar tarefa'))
              ],
            ),
            ),
          ),
    );
  }
}
