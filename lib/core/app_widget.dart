import 'package:nlw_quiz_dev/pages/challenge/challenge_page.dart';
import 'package:nlw_quiz_dev/pages/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:nlw_quiz_dev/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: "DevQuiz",
      home: ChallengePage(),
    );
  }
}
