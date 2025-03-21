import 'package:flutter/material.dart';
import 'package:zyro_finance/presentation/courses/summary/pages/CourseSummary.dart';

import 'package:zyro_finance/presentation/widgets/course_item.dart';
import 'package:zyro_finance/domain/entities/course.dart';
import 'package:zyro_finance/domain/usecases/get_courses.dart';

class ListOfCourses extends StatelessWidget {
  final GetCourses getCourses;

  const ListOfCourses({required this.getCourses, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Cursos'),
      ),
      body: FutureBuilder<List<Course>>(
        future: getCourses.call(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Nenhum curso disponível.'));
          } else {
            final courses = snapshot.data!;
            return ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                return CourseItem(
                  course: course,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                       // builder: (context) => CourseDetailScreen(course: course),
                        builder: (context) => CourseSummary(),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}