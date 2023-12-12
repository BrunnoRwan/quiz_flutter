import 'package:flutter/material.dart';
import 'package:quiz/repositories/quiz_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz', style: TextStyle(fontSize: 30)),
        backgroundColor: const Color.fromRGBO(58, 58, 60, 1.0),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Conhecimento Gerais"),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/QuizPage',
                  arguments: {
                    'questions':
                        conhecimentosGerais, // Sua lista de perguntas aqui
                  },
                );
              },
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Matemática"),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/QuizPage',
                  arguments: {
                    'questions': matematica, // Sua lista de perguntas aqui
                  },
                );
              },
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/logo.png', width: 200, height: 200),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(58, 58, 60, 1.0),
                  minimumSize: const Size(300, 70),
                ),
                child: const Text("Iniciar", style: TextStyle(fontSize: 30)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
