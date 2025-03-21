import 'package:zyro_finance/domain/entities/course.dart';

abstract class CourseRepository {
  Future<List<Course>> getCourses();
  Future<Course> getCourseById(String id);
}