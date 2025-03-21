import 'package:zyro_finance/data/models/course_model.dart';
import 'package:zyro_finance/domain/entities/course.dart';
import 'package:zyro_finance/domain/repositories/course_repository.dart';

class CourseRepositoryImpl implements CourseRepository {
  @override
  Future<List<Course>> getCourses() async {
    // Simulação de dados (substitua por uma chamada real à API ou banco de dados)
    await Future.delayed(const Duration(seconds: 1)); // Simula um delay de rede
    return [
      CourseModel(
        id: '1',
        title: 'Conceitos Básicos sobre Finanças',
        description: '📌 Objetivo: Reunir todo o conhecimento essencial para iniciar uma vida financeira saudável, ajudando os alunos a entender melhor seu dinheiro e os fatores que afetam seu enriquecimento.',
        content: 'Conteúdo detalhado do curso...',
      ).toEntity(), // Converta CourseModel para Course
      CourseModel(
        id: '2',
        title: 'Investimentos para Iniciantes',
        description: 'Descubra como começar a investir.',
        content: 'Conteúdo detalhado do curso...',
      ).toEntity(), // Converta CourseModel para Course
      CourseModel(
        id: '3',
        title: 'Investimentos para Iniciantes',
        description: 'Descubra como começar a investir.',
        content: 'Conteúdo detalhado do curso...',
      ).toEntity(), // Converta CourseModel para Course
      CourseModel(
        id: '4',
        title: 'Investimentos para Iniciantes',
        description: 'Descubra como começar a investir.',
        content: 'Conteúdo detalhado do curso...',
      ).toEntity(), // Converta CourseModel para Course
      CourseModel(
        id: '5',
        title: 'Investimentos para Iniciantes',
        description: 'Descubra como começar a investir.',
        content: 'Conteúdo detalhado do curso...',
      ).toEntity(), // Converta CourseModel para Course
      CourseModel(
        id: '6',
        title: 'Investimentos para Iniciantes',
        description: 'Descubra como começar a investir.',
        content: 'Conteúdo detalhado do curso...',
      ).toEntity(), // Converta CourseModel para Course
    ];
  }

  @override
  Future<Course> getCourseById(String id) async {
    // Simulação de dados (substitua por uma chamada real à API ou banco de dados)
    await Future.delayed(const Duration(seconds: 1)); // Simula um delay de rede
    return CourseModel(
      id: id,
      title: 'Curso Detalhado',
      description: 'Descrição detalhada do curso.',
      content: 'Conteúdo detalhado do curso...',
    ).toEntity(); // Converta CourseModel para Course
  }
}