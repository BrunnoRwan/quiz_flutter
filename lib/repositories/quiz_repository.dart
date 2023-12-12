import '/models/quizzes.dart';

abstract class QuizRepository {
  Future<Quizzes> getQuizzes();
}
