import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.ontap, this.text, {super.key});

  final void Function() ontap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return 
        ElevatedButton(
          onPressed: ontap,
          child: Text(text),
             );
    
  }
}
