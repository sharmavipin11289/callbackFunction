import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'answer_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final questions = ["How are you?", "Your age between?"];

  int? selectedAnswer;

  void answerTheQuestion(int answerIndex) {
    print(
      "answering the question ${answerIndex}",
    );

    setState(() {
      selectedAnswer = answerIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: (selectedAnswer == null)
              ? Column(
                  children: [
                    Text(
                      questions[0],
                    ),
                    Answer(
                      callBack: answerTheQuestion,
                      answerIndex: 1,
                    ),
                    Answer(
                      callBack: answerTheQuestion,
                      answerIndex: 2,
                    ),
                  ],
                )
              : Text('Your answer submitted'),
        ),
      ),
    );
  }
}
