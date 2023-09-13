import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class resultText extends StatelessWidget {
  resultText({super.key,
   required this.string ,
   this.color=Colors.white,
   this.size=14 });

  String string;
  Color color;
  double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      string,
      style: GoogleFonts.lato(
          color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
