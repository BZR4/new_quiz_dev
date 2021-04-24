import 'package:flutter/material.dart';
import 'package:nlw_quiz_dev/pages/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:nlw_quiz_dev/pages/challenge/widgets/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  //Construtor aqui...

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: SafeArea(
          child: QuestionIndicatorWidget(),
        ),
      ),
      body: Column(
        children: [
          QuizWidget(title: 'O que o Flutter faz em sua totalidade?'),
        ],
      ),
    );
  }
}
