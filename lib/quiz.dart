import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _Quizstate();
  }
}

class _Quizstate extends State<Quiz>{
  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors:  [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 160, 89, 226),
              ],
              begin: Alignment.bottomLeft,
              end:Alignment.topRight,
            ),
            ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}