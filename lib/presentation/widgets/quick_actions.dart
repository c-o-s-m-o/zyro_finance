import 'package:flutter/material.dart';
import 'package:zyro_finance/core/constants/app_colors.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildQuickActionItem(Icons.add, "Adicionar Transação"),
        _buildQuickActionItem(Icons.pie_chart, "Ver Análises"),
        _buildQuickActionItem(Icons.history, "Histórico"),
      ],
    );
  }

  Widget _buildQuickActionItem(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.orange,
          child: Icon(icon, size: 30, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: AppColors.textColor),
        ),
      ],
    );
  }
}