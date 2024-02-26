import 'package:flutter/material.dart';
import 'my_custom_form.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const SafeArea(child: MyCustomForm()),
        appBar: AppBar(
          title: const Text('Quiz Generator'),
        ),
      ),
    );
  }
}




