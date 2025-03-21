import 'package:flutter/material.dart';
import 'package:zyro_finance/injection_container.dart'; // Importe o container de injeção
import 'package:zyro_finance/presentation/pages/dashboard_screen.dart';

void main() {
  // Inicializa as dependências
  init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const DashboardScreen(),
    );
  }
}