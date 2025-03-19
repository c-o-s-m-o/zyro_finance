import 'package:flutter/material.dart';
import 'package:zyro_finance/core/constants/app_colors.dart';
import 'package:zyro_finance/presentation/widgets/account_card.dart';
import 'package:zyro_finance/presentation/widgets/balance_bar_chart.dart';

class AccountBalance extends StatelessWidget {
  const AccountBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Contas",
          /*style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
          ),*/
        ),
        const SizedBox(height: 16),
        // Cards de contas com rolagem horizontal
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildAccountCard(
                "Conta Principal",
                "R\$ 400.500,00",
                Colors.orange,
                0.8,
              ),
              const SizedBox(width: 16),
              _buildAccountCard(
                "Conta Secundária",
                "R\$ 200.000,00",
                Colors.blue,
                0.5,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Gráfico de barras
       // const BalanceBarChart(),
      ],
    );
  }

  Widget _buildAccountCard(String title, String amount, Color color, double progress) {
    return AccountCard(
      title: title,
      amount: amount,
      color: color,
      progress: progress,
    );
  }
}