import 'package:flutter/material.dart';
import 'package:zyro_finance/arquivos_testes/widget/tela_de_progresso_estudo.dart';
import '../../content/pages/CourseContent.dart'; // Importando a nova tela de conteúdo

class CourseSummary extends StatelessWidget {
  const CourseSummary({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Grade do curso'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildModule("Módulo 1", screenWidth),
            const SizedBox(height: 24),

            _buildModuleTitle("Conceitos Fundamentais de Finanças"),
            const SizedBox(height: 16),

            _buildModuleSummary("O que é Dinheiro e Como Ele Funciona?", context),
            const SizedBox(height: 24),

            _buildModule("Módulo 2", screenWidth),
            const SizedBox(height: 24),

            _buildModuleTitle("Investimentos e Estratégias"),
            const SizedBox(height: 16),

            _buildModuleSummary("Investimentos e Estratégias", context),
          ],
        ),
      ),
    );
  }

  Widget _buildModule(String module, double screenWidth) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: screenWidth * 0.7,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: const BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 4),
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              module,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildModuleTitle(String title) {
    return Center( // 🔹 Agora o título está centralizado
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.deepOrange,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildModuleSummary(String title, BuildContext context) {
    List<String> topics = [
      "Introdução ao conceito",
      "Principais características",
      "Aplicações e exemplos",
      "Impacto no mercado financeiro",
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          Positioned(
            left: 22,
            top: 40,
            bottom: 0,
            child: Container(
              width: 3,
              color: Colors.green,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildMainSummaryItem(title),
              const SizedBox(height: 8),
              for (var topic in topics) _buildSubSummaryItem(topic, context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMainSummaryItem(String title) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.green, width: 4),
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSubSummaryItem(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, top: 8, bottom: 8),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseContent(title: title,), // 🔹 Abre a nova página ao clicar
              //builder: (context) => ContentScreen(title: title), // 🔹 Abre a nova página ao clicar

            ),
          );
        },
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
