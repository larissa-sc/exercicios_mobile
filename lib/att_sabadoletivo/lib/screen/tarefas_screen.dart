import 'package:att_sabadoletivo/models/tarefa.dart';
import 'package:att_sabadoletivo/widgets/tarefa_card.dart';
import 'package:flutter/material.dart';

import '../alerts/nova_tarefa_dialog.dart';

class TarefasScreen extends StatefulWidget {
  final VoidCallback onTemaAlterado;

  const TarefasScreen({
    super.key,
    required this.onTemaAlterado,
  });

  @override
  State<TarefasScreen> createState() => _TarefasScreenState();
}

class _TarefasScreenState extends State<TarefasScreen> {

  ThemeMode tema = ThemeMode.system;

  final List<Tarefa> tarefas = [];
  
  @override
  Widget build(BuildContext context) {
    final tamanhoTela = MediaQuery.sizeOf(context);
    final paddingTela = tamanhoTela.width * 0.04;
    final bottomTela = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: AppBar(
        title:Text('Lista de Tarefas'),
        actions: [
          IconButton(
            onPressed: widget.onTemaAlterado,
            icon: const Icon(Icons.brightness_6),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(paddingTela, paddingTela, paddingTela, bottomTela),
        child: Column(
          children: [
            Expanded(
                child: tarefas.isEmpty
                    ? const Center(
                  child: Text('Ainda não há tarefas'),)
                    :ListView.builder(
                      itemCount: tarefas.length,
                      itemBuilder: (context, index) =>
                          TarefaCard(
                              tarefa: tarefas[index],
                              onExcluir: () {
                                setState(() {
                                  tarefas.removeAt(index);
                                });
                              },
                              onConcluida: (value){
                                setState(() {
                                  tarefas[index].concluida = value!;
                                });
                              },
                          )
                )
            ),

            ElevatedButton(
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return NovaTarefaDialog(
                        onSalvar: (Tarefa value) {
                          setState(() {
                            tarefas.add(value);
                          });
                        },);
                    },
                  );
                },
                child: Text('+ Nova Tarefa')
            ),
          ],
        ),
      ),
    );
  }
}
