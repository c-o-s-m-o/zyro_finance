import 'package:flutter/material.dart';
import 'package:zyro_finance/core/constants/app_colors.dart';

class FinanceManagement extends StatelessWidget {
  const FinanceManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Gerenciamento Financeiro",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildFinanceActionItem(Icons.add, "Adicionar Receita"),
            _buildFinanceActionItem(Icons.remove, "Adicionar Despesa"),
            _buildFinanceActionItem(Icons.flag, "Adicionar Meta"),
          ],
        ),
        const SizedBox(height: 20),
        _buildFinanceEntries(),
      ],
    );
  }

  Widget _buildFinanceActionItem(IconData icon, String label) {
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

  Widget _buildFinanceEntries() {
    final List<Map<String, dynamic>> entries = [
      {"type": "Receita", "description": "Salário", "amount": 4000.00},
      {"type": "Despesa", "description": "Supermercado", "amount": -150.00},
      {"type": "Meta", "description": "Fundo de Emergência", "amount": 10000.00},
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: entries.length,
      itemBuilder: (context, index) {
        final entry = entries[index];
        return ListTile(
          leading: Icon(
            entry["type"] == "Receita"
                ? Icons.arrow_downward
                : entry["type"] == "Despesa"
                    ? Icons.arrow_upward
                    : Icons.flag,
            color: entry["type"] == "Receita"
                ? Colors.green
                : entry["type"] == "Despesa"
                    ? Colors.red
                    : Colors.orange,
          ),
          title: Text(
            entry["description"],
            style: const TextStyle(color: AppColors.textColor),
          ),
          trailing: Text(
            "R\$ ${entry["amount"].toStringAsFixed(2)}",
            style: TextStyle(
              color: entry["amount"] > 0 ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}