import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key,required this.onSelectAnswer});
  
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
    setState(() {   // tells flutter to re-run the build method , with updated values
      currentQuestionIndex ++;
    });
  }

  @override
  Widget build(context) {

    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: 
        Container(
          margin:const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Text(currentQuestion.text,
            style:GoogleFonts.kanit(
              color:const Color.fromARGB(255, 217, 188, 231),
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ) ,
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer){     //here map converts string to AnswerButton , 
            return AnswerButton(      //... adds the AnswerButton as individual widgets
              answerText: answer, 
              onTap:(){
                answerQuestion(answer);
              },
              );
            }),
          ]),
        ),
    );
  }
}