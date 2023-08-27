import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.ontap,{super.key});

  final void Function()ontap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/quiz-logo.png',height: 350,color: Color.fromARGB(110, 255, 255, 255),),
          const SizedBox(height: 50,),
          ElevatedButton(onPressed: ontap, child: const Text('Start Quiz'))
        ],
      ),
    );
  }
}