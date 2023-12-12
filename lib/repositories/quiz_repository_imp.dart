import '/models/quiz.dart';
import '/models/quizzes.dart';
import 'quiz_repository.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class QuizRepositoryImp implements QuizRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<Quizzes> getQuizzes() async {
    try {
      QuerySnapshot querySnapshot =
          await _firestore.collection('quizzes').get();
      List<Quiz> quizzesList = querySnapshot.docs
          .map((doc) => Quiz.fromJson(doc.data() as Map<String, dynamic>))
          .toList();

      return Quizzes(
          nomeQuiz: "Quiz da adição",
          quiz: quizzesList); // Ajuste conforme a estrutura do seu app
    } catch (e) {
      throw Exception('Erro ao buscar quizzes: $e');
    }
  }
}
