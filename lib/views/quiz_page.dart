import 'package:flutter/material.dart';
import 'widgets/answer_button.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizState();
}

class _QuizState extends State<QuizPage> {
  int questionIndex = 0;
  final List<String> questions = [
    'Pergunta 1',
    'Pergunta 2',
    'Pergunta 3',
    'Pergunta 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Responda a Pergunta', style: TextStyle(fontSize: 30))),
        backgroundColor: const Color.fromRGBO(115, 73, 252, 1.0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              questions[questionIndex],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            AnswerButton(
              onPressed: () {},
              buttonText: 'R1',
            ),
            AnswerButton(
              onPressed: () {},
              buttonText: 'R2',
            ),
            AnswerButton(
              onPressed: () {},
              buttonText: 'R3',
            ),
            AnswerButton(
              onPressed: () {},
              buttonText: 'R4',
            ),
          ],
        ),
      ),
    );
  }
}
