import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answers_button.dart';
import 'package:quiz_app/data/questions.dart';

class question_screen extends StatefulWidget {
  const question_screen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<question_screen> createState() => _question_screenState();
}

class _question_screenState extends State<question_screen> {
  var currentQuesttionIndex = 0;

  void answerquestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuesttionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestiton = qestoins[currentQuesttionIndex];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestiton.text,
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 201, 153, 251),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentquestiton.getshuffledAnswer().map((answers) {
              return answerButton(
                answerTtext: answers,
                ontap: () {
                  answerquestion(answers);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
