import 'package:flutter/material.dart';
import 'package:fyp/templates/quiz_template/constants.dart';
import 'package:fyp/templates/quiz_template/controllers/question_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              const Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kSecondaryColor),
              ),
              const Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kSecondaryColor),
              ),
              const Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
