import 'package:att_sabadoletivo/screen/tarefas_screen.dart';
import 'package:att_sabadoletivo/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode tema = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: tema,
      home: TarefasScreen(
        onTemaAlterado: () {
          setState(() {
            tema = tema == ThemeMode.dark
                ? ThemeMode.light
                : ThemeMode.dark;
          });
        },
      ),
    );
  }
}