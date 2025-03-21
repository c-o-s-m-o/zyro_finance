import 'package:zyro_finance/domain/entities/course.dart';

class CourseModel {
  final String id;
  final String title;
  final String description;
  final String content;

  CourseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
  });

  // Converte CourseModel para Course
  Course toEntity() {
    return Course(
      id: id,
      title: title,
      description: description,
      content: content,
    );
  }
}