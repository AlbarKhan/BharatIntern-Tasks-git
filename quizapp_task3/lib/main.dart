import 'package:flutter/material.dart';

ColorScheme kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(19, 132, 20, 71));

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(colorScheme: kColorScheme),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.secondaryContainer,
                Theme.of(context)
                    .colorScheme
                    .secondaryContainer
                    .withOpacity(0.7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
