import 'package:flutter/material.dart';
import 'package:zyro_finance/core/constants/app_colors.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Transações Recentes",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
          ),
        ),
        const SizedBox(height: 10),
        _buildTransactionItem(
          Icons.shopping_cart,
          "Supermercado",
          "- R\$ 150,00",
          Colors.red,
        ),
        _buildTransactionItem(
          Icons.fastfood,
          "Almoço",
          "- R\$ 35,00",
          Colors.red,
        ),
        _buildTransactionItem(
          Icons.attach_money,
          "Salário",
          "+ R\$ 4.000,00",
          Colors.orange,
        ),
      ],
    );
  }

  Widget _buildTransactionItem(
    IconData icon,
    String title,
    String amount,
    Color color,
  ) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title, style: const TextStyle(color: AppColors.textColor)),
      trailing: Text(
        amount,
        style: TextStyle(color: color, fontWeight: FontWeight.bold),
      ),
    );
  }
}