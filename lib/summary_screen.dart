import 'package:flutter/material.dart';
import 'start_screen.dart';

class SummaryScreen extends StatelessWidget {
  final int score;

  const SummaryScreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Quiz Finished!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            Text("Your Score: $score", style: TextStyle(fontSize: 24)),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => StartScreen()),
                  (route) => false,
                );
              },
              child: Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
