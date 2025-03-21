import 'package:zyro_finance/domain/entities/course.dart';
import 'package:zyro_finance/domain/repositories/course_repository.dart';

class GetCourses {
  final CourseRepository repository;

  GetCourses({required this.repository});

  Future<List<Course>> call() async {
    return await repository.getCourses();
  }
}