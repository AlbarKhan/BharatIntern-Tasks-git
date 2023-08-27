import 'package:flutter/material.dart';
import 'package:quizapp_task3/data/question.dart';
import 'package:quizapp_task3/widgets/answer_button.dart';

class QuestionScren extends StatefulWidget {
  const QuestionScren(this.chooseanswer,{super.key});

  final void Function(String ans) chooseanswer;

  @override
  State<QuestionScren> createState() => _QuestionScrenState();
}

class _QuestionScrenState extends State<QuestionScren> {

  var  currentQuestionIndex = 0;

  void activeQuestion(String ans){
    widget.chooseanswer(ans);
    setState(() {
      currentQuestionIndex++;
    });
  }



  @override
  Widget build(BuildContext context) {
    final currentquestion = question[currentQuestionIndex];
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentquestion.question,textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleSmall,),
            const SizedBox(height: 40,),
            ...currentquestion.shuffeledAnswer.map((answer) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: AnswerButton((){activeQuestion(answer);}, answer),
              );
            },).toList()
            
          ],
        ),
      ),
    );
  }
}