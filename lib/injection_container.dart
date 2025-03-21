import 'package:get_it/get_it.dart';
import 'package:zyro_finance/data/repositories/course_repository_impl.dart';
import 'package:zyro_finance/domain/repositories/course_repository.dart';
import 'package:zyro_finance/domain/usecases/get_courses.dart';

final getIt = GetIt.instance;

void init() {
  // Registra o CourseRepository
  getIt.registerSingleton<CourseRepository>(CourseRepositoryImpl());

  // Registra o GetCourses
  getIt.registerFactory(() => GetCourses(repository: getIt<CourseRepository>()));
}