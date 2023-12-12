import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Center(child: Text('Quiz', style: TextStyle(fontSize: 30))),
        backgroundColor: const Color.fromRGBO(58, 58, 60, 1.0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/logo.png', width: 200, height: 200),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(115, 73, 252, 1.0),
                minimumSize: const Size(300, 70),
              ),
              child: const Text("Iniciar", style: TextStyle(fontSize: 30)),
            ),
          ],
        ),
      ),
    );
  }
}
