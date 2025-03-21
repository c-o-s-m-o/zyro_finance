import 'package:flutter/material.dart';
import 'package:zyro_finance/domain/usecases/get_courses.dart';
import 'package:zyro_finance/injection_container.dart';
import 'package:zyro_finance/presentation/courses/list/pages/ListOfCourses.dart';

class CourseModule {
  static void initialize() {
    // Inicialização do módulo, caso necessário
    print("Módulo de cursos inicializado.");
  }

  static void navigateToCourses(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ListOfCourses(getCourses: getIt<GetCourses>()),
      ),
    );
  }
}
