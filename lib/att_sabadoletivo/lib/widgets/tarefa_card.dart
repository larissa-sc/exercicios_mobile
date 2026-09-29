import 'package:att_sabadoletivo/models/tarefa.dart';
import 'package:flutter/material.dart';

class TarefaCard extends StatelessWidget {

  final Tarefa tarefa;
  final VoidCallback onExcluir;
  final ValueChanged<bool?> onConcluida;

  const TarefaCard({
    super.key,
    required this.tarefa,
    required this.onExcluir,
    required this.onConcluida,
  });

  @override
  Widget build(BuildContext context) {
    final esquemaDeCores = Theme.of(context).colorScheme;
    final texto = Theme.of(context).textTheme;

    return Card(
        child: ListTile(
          title: Text(
            tarefa.titulo,
            style: texto.titleMedium?.copyWith(
              decoration: tarefa.concluida
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              decorationThickness: 2,
              color: tarefa.concluida
                  ? esquemaDeCores.onSurfaceVariant
                  : null,
            ),
          ),

          subtitle: Text(
            tarefa.descricao,
            style: texto.bodyMedium?.copyWith(
              decoration: tarefa.concluida
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              decorationThickness: 2,
              color: tarefa.concluida
                  ? esquemaDeCores.onSurfaceVariant
                  : null,
            ),
          ),

          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                  value: tarefa.concluida,
                  onChanged: onConcluida
              ),

              IconButton(
                  onPressed: onExcluir,
                  icon: const Icon(Icons.delete)
              ),
            ],
          ),
        )
    );
  }
}
