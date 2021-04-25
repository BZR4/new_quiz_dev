import 'package:flutter/material.dart';
import 'package:nlw_quiz_dev/core/core.dart';
import 'package:nlw_quiz_dev/pages/home/home_controller.dart';
import 'package:nlw_quiz_dev/pages/home/widgets/appbar/app_bar_widget.dart';
import 'package:nlw_quiz_dev/pages/home/widgets/card/quiz_card.dart';
import 'package:nlw_quiz_dev/pages/home/widgets/home_state.dart';
import 'package:nlw_quiz_dev/pages/home/widgets/level_button/level_button_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    setState(() {
      controller.getQuizzes();
      controller.getuser();
      controller.stateNotifier.addListener(() {
        setState(() {});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(
          user: controller.user!,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButtonWidget(label: 'Fácil'),
                  LevelButtonWidget(label: 'Médio'),
                  LevelButtonWidget(label: 'Difícil'),
                  LevelButtonWidget(label: 'Perito'),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisSpacing: 8,
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  children: controller.quizzes!
                      .map((e) => QuizCardWidget(
                          title: e.title,
                          percent: e.questionAnswered / e.questions.length,
                          completed:
                              '${e.questionAnswered}/${e.questions.length}'))
                      .toList(),
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          ),
        ),
      );
    }
  }
}
