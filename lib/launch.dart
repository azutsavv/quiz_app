import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class launch extends StatelessWidget {
  static const routename = '/launch';
  const launch(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    var ht = MediaQuery.of(context).size.height;
    var wd = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            fit: BoxFit.cover,
            width: wd * 0.5,
            color: const Color.fromARGB(121, 255, 255, 255),
          ),

          // it will become performance issue if fwew warap a widge  like this so use another method
          //   Opacity(
          //     opacity: 0.5,
          //     child: Image.asset('assets/images/quiz-logo.png',
          //     fit: BoxFit.cover,
          //     width: wd*0.5,
          //     ),
          //   ),

          SizedBox(
            height: ht * 0.03,
          ),

          Text(
            "Quiz App",
            style: GoogleFonts.lato(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(
            height: ht * 0.03,
          ),

          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            label: const Text(
              "Start",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
