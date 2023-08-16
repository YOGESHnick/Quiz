import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(  this.startQuiz,{super.key});

  final void Function() startQuiz;


  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(175, 255, 255, 255),
        ),
        const SizedBox(height: 90),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.kanit(
            color:const Color.fromARGB(255, 217, 188, 231),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 60,),
        OutlinedButton.icon(
          onPressed:startQuiz,
          style: OutlinedButton.styleFrom(
          foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
        ),
        icon:const Icon(Icons.arrow_right_alt),
        label: const Text(" Get started")
        ),
      ]),
    );
  }
}
