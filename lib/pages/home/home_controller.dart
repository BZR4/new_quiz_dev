import 'package:flutter/material.dart';
import 'package:nlw_quiz_dev/pages/home/home_repository.dart';
import 'package:nlw_quiz_dev/pages/home/widgets/home_state.dart';
import 'package:nlw_quiz_dev/pages/shared/models/quiz_model.dart';
import 'package:nlw_quiz_dev/pages/shared/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getuser() async {
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }
}