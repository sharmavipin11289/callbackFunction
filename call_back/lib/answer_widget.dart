import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function(int) callBack;
  final int answerIndex;
  const Answer({Key? key, required this.callBack, required this.answerIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          callBack(answerIndex);
        },
        child: const Text('Answer'),
      ),
    );
  }
}
