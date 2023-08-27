import 'package:flutter/material.dart';
import 'package:quizapp_task3/data/question.dart';

class Result extends StatelessWidget {
  const Result(this.ontap, this.chosenAnswer, {super.key});

  final List<String> chosenAnswer;
  final void Function() ontap;

  List<Map<String, Object>> groupedresult() {
    List<Map<String, Object>> summry = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summry.add(
        {
          'current_index': i,
          'question': question[i].question,
          'correct_answer': question[i].answer[0],
          'user_answer': chosenAnswer[i],
        },
      );
    }
    return summry;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = groupedresult();
    final numquestion = question.length;
    final numCorrectAnswer = summaryData.where(
      (element) {
        return element['user_answer'] == element['correct_answer'];
      },
    ).length;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'You have answered $numCorrectAnswer Out of $numquestion'
                .toUpperCase(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 580,
            child: SingleChildScrollView(
              child: Column(
                children: groupedresult().map(
                  (e) {
                    return Card(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer
                                    .withOpacity(0.0),
                                Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer
                                    .withOpacity(0.5)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),  
                        ),
                        padding: EdgeInsets.symmetric(vertical: 14,horizontal: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(((e['current_index']as int) +1).toString()),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .primary.withOpacity(0.5),
                              child: Text(
                                ((e['current_index'] as int) + 1).toString(),
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer),
                              ),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e['question'].toString(),
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Your Answer - ${e['user_answer']}'.toString(),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Correct Answer  -  ${e['correct_answer']}'.toString(),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
            child: IconButton(
              onPressed: ontap,
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.5)
              ),
              icon: const Icon(Icons.restart_alt),
            ),
          )
        ],
      ),
    );
  }
}
