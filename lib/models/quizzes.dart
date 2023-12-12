import 'quiz.dart';

class Quizzes {
  String? nomeQuiz;
  List<Quiz>? quiz;

  Quizzes({this.nomeQuiz, this.quiz});

  Quizzes.fromJson(Map<String, dynamic> json) {
    nomeQuiz = json['nome_quiz'];
    if (json['quiz'] != null) {
      quiz = <Quiz>[];
      json['quiz'].forEach((v) {
        quiz!.add(Quiz.fromJson(v));
      });
    }
  }
}
