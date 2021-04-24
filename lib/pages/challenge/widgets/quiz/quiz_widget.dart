import 'package:flutter/material.dart';
import 'package:nlw_quiz_dev/core/core.dart';
import 'package:nlw_quiz_dev/pages/challenge/widgets/answer/answer_widget.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnswerWidget(
              isSelected: true,
              isRight: true,
              title: 'Kit de desenvolvimento de interface de usuário'),
          AnswerWidget(
              isSelected: true,
              isRight: false,
              title: 'Kit de desenvolvimento de interface de usuário'),
          AnswerWidget(
              isSelected: false,
              isRight: true,
              title: 'Kit de desenvolvimento de interface de usuário'),
          AnswerWidget(title: 'Kit de desenvolvimento de interface de usuário'),
        ],
      ),
    );
  }
}
