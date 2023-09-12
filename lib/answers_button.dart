import 'package:flutter/material.dart';

class answerButton extends StatelessWidget {
  const answerButton({
    super.key ,
    required this.answerTtext,
    required this.ontap
    });

  final String answerTtext;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 35, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        )


      ),
      child: Text(answerTtext,textAlign: TextAlign.center,),
      
    );
  }
}
