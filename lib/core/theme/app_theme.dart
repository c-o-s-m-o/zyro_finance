// Configurações de tema

import 'package:flutter/material.dart';
import 'package:zyro_finance/core/constants/app_colors.dart';

final appTheme = ThemeData.dark().copyWith(
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.backgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.secondaryColor,
    elevation: 0,
  ),
);