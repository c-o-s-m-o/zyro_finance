import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zyro_finance/core/constants/app_colors.dart';
import 'package:zyro_finance/domain/usecases/get_courses.dart';
import 'package:zyro_finance/presentation/courses/navigation/CourseModule.dart';
import 'package:zyro_finance/presentation/widgets/user_profile.dart';
import 'package:zyro_finance/presentation/widgets/account_balance.dart';
import 'package:zyro_finance/presentation/widgets/quick_actions.dart';
import 'package:zyro_finance/presentation/widgets/financial_summary.dart';
import 'package:zyro_finance/presentation/widgets/debt_analysis_grid.dart';
import 'package:zyro_finance/presentation/widgets/financial_goals.dart';
import 'package:zyro_finance/presentation/widgets/recent_transactions.dart';
import 'package:zyro_finance/presentation/widgets/finance_management.dart';
import 'package:zyro_finance/presentation/courses/list/pages/ListOfCourses.dart'; // Importe a tela de cursos
import 'package:zyro_finance/injection_container.dart'; // Importe o container de injeção de dependências

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Zyro Finance",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              background: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "lib/assets/images/background.jpg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Container(color: Colors.black.withOpacity(0.6)),
                ],
              ),
            ),
            actions: [
              // Botão de notificações
              IconButton(
                icon: const Icon(Icons.notifications, color: Colors.orange),
                onPressed: () {},
              ),
              // Botão para a tela de cursos
              IconButton(
                icon: const Icon(Icons.school, color: Colors.orange),
                onPressed: () {
                  CourseModule.initialize(); // Inicializa o módulo, se necessário
                  CourseModule.navigateToCourses(
                    context,
                  ); // Navega para a página de cursos
                },
              ),
              /*IconButton(
                icon: const Icon(Icons.school, color: Colors.orange),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CoursesScreen(getCourses: getIt<GetCourses>()),
                      
                    ),
                  );
                },
              ),*/
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const UserProfile(),
                  const SizedBox(height: 20),
                  const AccountBalance(),
                  const SizedBox(height: 20),
                  const QuickActions(),
                  const SizedBox(height: 20),
                  const FinancialSummary(),
                  const SizedBox(height: 20),
                  const DebtAnalysisGrid(),
                  const SizedBox(height: 20),
                  const FinancialGoals(),
                  const SizedBox(height: 20),
                  const RecentTransactions(),
                  const SizedBox(height: 20),
                  const FinanceManagement(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.secondaryColor,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey[400],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Início"),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Carteira",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Config"),
        ],
      ),
    );
  }
}
