import 'package:flutter/material.dart';

class ControleTemperatura extends StatefulWidget {
  const ControleTemperatura({super.key});

  @override
  State<ControleTemperatura> createState() => _ControleTemperaturaState();
}

class _ControleTemperaturaState extends State<ControleTemperatura> {

  int temperatura = 25;

  @override
  Widget build(BuildContext context) {

    String mensagem;

    if(temperatura <= 15){
      mensagem = 'Está frio!';
    }
    else if(temperatura <= 25){
      mensagem = 'Temperatura agradável.';
    }
    else if(temperatura <= 35){
      mensagem = 'Está quente!';
    }
    else{
      mensagem = 'Está muito quente!';
    }

    return Scaffold (
      appBar: AppBar(
          title: Text ('Temperatura do dia')
      ),
      body: Center(
        child: Column(
          children: [

            const SizedBox(height: 16),

            Text('Temperatura atual: ${temperatura}°C'),
            Text(mensagem),

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      temperatura--;
                    });
                  },
                  child: Text('-'),
                ),

                const SizedBox(width: 16),

                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      temperatura++;
                    });
                  },
                  child: Text('+'),
                ),
              ],
            ),

            OutlinedButton(
                onPressed: (){
                  setState(() {
                    temperatura = 25;
                  });
                },
                child: Text('Resetar')
            ),
          ],
        ),
      ),
    );
  }
}