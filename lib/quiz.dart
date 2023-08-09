import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _Quizstate();
  }
}

class _Quizstate extends State<Quiz>{

  // var activeScreen = const StartScreen();   
  //var activeScreen can't be used because we can't assign Startscreen to it, hence we the  more general Widget
  Widget activeScreen = const StartScreen();
  void switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }
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
          child: activeScreen,
        ),
      ),
    );
  }
}