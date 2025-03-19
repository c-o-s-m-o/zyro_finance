import 'package:flutter/material.dart';
import 'package:zyro_finance/core/constants/app_colors.dart';

class DebtAnalysisGrid extends StatefulWidget {
  const DebtAnalysisGrid({super.key});

  @override
  State<DebtAnalysisGrid> createState() => _DebtAnalysisGridState();
}

class _DebtAnalysisGridState extends State<DebtAnalysisGrid> {
  int selectedYear = 2024;
  final List<int> availableYears = [2022, 2023, 2024, 2025];

  final Map<int, List<double>> debtData = {
    2022: [10, 20, 23, 50, 60, 15, 24, 70, 42, 30, 20, 10],
    2023: [15, 25, 40, 55, 65, 85, 95, 75, 55, 35, 25, 15],
    2024: [20, 35, 50, 75, 90, 15, 85, 70, 55, 40, 25, 15],
    2025: [5, 15, 25, 45, 55, 75, 85, 65, 45, 25, 15, 5],
  };

  Color getColor(double percent) {
    if (percent >= 90) return Colors.red.shade700;
    if (percent >= 60) return Colors.orange.shade600;
    if (percent >= 30) return Colors.yellow.shade600;
    return Colors.green.shade600;
  }

  String getDebtStatus(double percent) {
    if (percent >= 90) return "Crítico 🚨";
    if (percent >= 60) return "Alto ⚠️";
    if (percent >= 30) return "Moderado ⚡";
    return "Baixo ✅";
  }

  void showMonthDetails(BuildContext context, String month, double percentage) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Detalhes de $month/$selectedYear",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Endividamento: ${percentage.toStringAsFixed(0)}%",
                style: TextStyle(
                  fontSize: 16,
                  color: getColor(percentage),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Este mês teve um nível de endividamento ${getDebtStatus(percentage)}.",
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Fechar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String _getMonthName(int index) {
    List<String> months = [
      "Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
      "Jul", "Ago", "Set", "Out", "Nov", "Dez",
    ];
    return months[index];
  }

  @override
  Widget build(BuildContext context) {
    List<double> debtPercentages = debtData[selectedYear] ?? [];

    return StatefulBuilder(
      builder: (context, setState) {
        return Card(
          color: AppColors.secondaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Análise de Endividamento",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                      ),
                    ),
                    DropdownButton<int>(
                      value: selectedYear,
                      dropdownColor: AppColors.secondaryColor,
                      items: availableYears.map((year) {
                        return DropdownMenuItem<int>(
                          value: year,
                          child: Text(
                            year.toString(),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: year == selectedYear
                                  ? Colors.orange
                                  : Colors.grey[400],
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        if (value != null) {
                          setState(() => selectedYear = value);
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.2,
                  ),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    double percentage = debtPercentages[index];
                    return GestureDetector(
                      onTap: () => showMonthDetails(
                        context,
                        _getMonthName(index),
                        percentage,
                      ),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          color: getColor(percentage),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 4),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${percentage.toStringAsFixed(0)}%",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    _getMonthName(index),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}