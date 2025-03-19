import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:zyro_finance/presentation/pages/dashboard_screen.dart';

void main() {
  runApp(const ZyroFinanceApp());
}

class ZyroFinanceApp extends StatelessWidget {
  const ZyroFinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const DashboardScreen(),
    );
  }
}