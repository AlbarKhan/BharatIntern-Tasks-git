import 'package:flutter/material.dart';
import 'package:quizapp_task3/data/question.dart';
import 'package:quizapp_task3/widgets/result.dart';
import 'package:quizapp_task3/widgets/start_screen.dart';
import 'package:quizapp_task3/widgets/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  Widget ? activescreen;
  List<String> selectedanswer =[];

  @override
  void initState() {
    activescreen =  StartScreen(switchscreen);
    super.initState();
  }

  void switchscreen(){
    setState(() {
      activescreen =  QuestionScren(choseanswer);
    });
  }
  void restart(){
    selectedanswer = [];
    setState(() {
      activescreen = StartScreen(switchscreen);
    });
  }

  void choseanswer(String a){
    selectedanswer.add(a);

    if(selectedanswer.length == question.length){
      setState(() {
        activescreen = Result(restart,selectedanswer);
      });
      
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Theme.of(context).colorScheme.tertiaryContainer.withOpacity(0.8),
              Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.4),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
          ),
          child: activescreen,
        ),
      );
  }
}