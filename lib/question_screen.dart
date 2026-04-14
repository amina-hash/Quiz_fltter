import 'package:flutter/material.dart';
import 'summary_screen.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int questionIndex = 0;
  int score = 0;

  final List<Map<String, Object>> questions = [
    {
      "question": "What is Flutter?",
      "answers": [
        "A programming language",
        "A UI toolkit",
        "A database",
        "A game engine",
      ],
      "correct": "A UI toolkit",
    },
    {
      "question": "What language does Flutter use?",
      "answers": ["JavaScript", "Python", "Dart", "Java"],
      "correct": "Dart",
    },
  ];

  void answerQuestion(String answer) {
    if (answer == questions[questionIndex]["correct"]) {
      score++;
    }

    setState(() {
      questionIndex++;

      if (questionIndex >= questions.length) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SummaryScreen(score: score)),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Questions")),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[questionIndex]["question"] as String,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 30),

            ...(questions[questionIndex]["answers"] as List<String>).map((
              answer,
            ) {
              return Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButton(
                  onPressed: () => answerQuestion(answer),
                  child: Text(answer),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
