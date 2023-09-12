import 'package:flutter/material.dart';
import 'package:quiz_app/answers_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/quiz_question.dart';

class question_screen extends StatefulWidget {
  const question_screen({super.key});

  @override
  State<question_screen> createState() => _question_screenState();
}

class _question_screenState extends State<question_screen> {
  final currentquestiton = qestoins[0];

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestiton.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentquestiton.getshuffledAnswer().map((answers) {
              return answerButton(
                answerTtext: answers,
                ontap: () {},
              );
            }),
            
          ],
        ),
      ),
    );
  }
}
