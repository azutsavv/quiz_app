import 'package:flutter/material.dart';

class result_screen extends StatelessWidget {
  static const routename = "resultscreen";
  const result_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: const EdgeInsets.all(40),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You have answered X out Y questions correctly !"),
              ],
            )));
  }
}
