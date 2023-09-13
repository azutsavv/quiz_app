import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summery.dart';
import 'package:quiz_app/widgets/texttwidget.dart';

class result_screen extends StatelessWidget {
  static const routename = "resultscreen";
  const result_screen({super.key, required this.chosenanswer, required this.onrest});

  final void Function() onrest;
  final List<String> chosenanswer;

  List<Map<String, Object>> getSummeryData() {
    final List<Map<String, Object>> summery = [];

    for (var i = 0; i < chosenanswer.length; i++) {
      summery.add({
        'question_index': i,
        'question': qestoins[i].text,
        'correct_answer': qestoins[i].answers[0],
        'user_answer': chosenanswer[i]
      });
    }
    return summery;
  }

  @override
  Widget build(BuildContext context) {
    final summerydata = getSummeryData();
    final numtotalquestion = qestoins.length;
    final numcorrectquestion = summerydata.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Center(
        child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                resultText(string:"You have answered $numcorrectquestion out $numtotalquestion  questions correctly !"),
                const SizedBox(
                  height: 20,
                ),
                questionSummery(summerydata),
                const SizedBox(height: 10,),

                ElevatedButton.icon(
                  onPressed: onrest,
                  icon:const Icon( Icons.replay_sharp), 
                  label: const Text("Reset Quiz"))
              ],
            )
            

            ));
  }
}
