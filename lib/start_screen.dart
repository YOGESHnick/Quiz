import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(height: 90),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 60,),
        OutlinedButton(onPressed: (){}, 
        style: OutlinedButton.styleFrom(
          foregroundColor: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: const Text("--> Get started")),
      ]),
    );
  }
}
