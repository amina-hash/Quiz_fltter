import 'package:flutter/material.dart';
import 'question_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/question.png", width: 300),

            SizedBox(height: 20),

            Text(
              "Welcome To Exam APP",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuestionsScreen()),
                );
              },
              child: Text("Start Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
