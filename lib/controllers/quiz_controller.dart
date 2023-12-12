import 'package:flutter/material.dart';

import '/models/quiz.dart';
import '/repositories/quiz_repository_imp.dart';

class QuizController {
  final QuizRepositoryImp _quizRepositoryImp;

  QuizController(this._quizRepositoryImp);

  ValueNotifier<List<Quiz>> quizzes = ValueNotifier<List<Quiz>>([]);

  fetch() async {
    // quizzes.value = await _quizRepositoryImp.getList();
  }
}
