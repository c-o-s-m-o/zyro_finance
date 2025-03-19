import 'package:flutter/material.dart';
import 'package:zyro_finance/core/constants/app_colors.dart';

class FinancialGoals extends StatelessWidget {
  const FinancialGoals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Objetivos Financeiros",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
          ),
        ),
        const SizedBox(height: 10),
        _buildGoalItem("Fundo de Emergência", 0.6),
        _buildGoalItem("Investimentos", 0.4),
      ],
    );
  }

  Widget _buildGoalItem(String title, double progress) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 14, color: AppColors.textColor),
            ),
            Text(
              "${(progress * 100).toInt()}%",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        LinearProgressIndicator(
          value: progress,
          backgroundColor: Colors.grey[800],
          color: Colors.orange,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}