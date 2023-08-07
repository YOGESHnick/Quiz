import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
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
    ),
  );
}
