import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_scree.dart';
import 'package:quiz_app/result_screen.dart';
import 'launch.dart';

class Quiz extends StatefulWidget {
  static const routename = '/quiz';
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

// there is an another method for assigning active screen. instead of using init state we can use the
// turnary operator and assigning a string instead of widget.

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activescreen = "launch";

  // @override
  // void initState() {
  //   activescreen = launch(switchscreen);
  //   super.initState();
  // }

  void switchscreen() {
    setState(() {
      activescreen = "question-screen";
    });
  }

  void onreset(){
    setState(() {
      selectedAnswer=[];
      activescreen = "question-screen";

    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == qestoins.length) {
      setState(() {
        
        activescreen = "result-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenwidget = launch(switchscreen);

    if (activescreen == "question-screen") {
      screenwidget = question_screen(
        onSelectAnswer: chooseAnswer,
        );
    }

    if (activescreen == 'result-screen') {
      screenwidget = result_screen(chosenanswer: selectedAnswer, onrest: onreset,);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Quiz App'),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 42, 11, 96),
            Color.fromARGB(255, 106, 15, 139),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: screenwidget,
          ),
      ),
    );
  }
}
