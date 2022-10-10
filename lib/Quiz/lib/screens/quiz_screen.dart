import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sign_in_interface/Quiz/lib/common/extensions.dart';
import 'package:sign_in_interface/Quiz/lib/common/theme_helper.dart';
import 'package:sign_in_interface/Quiz/lib/models/dto/option_selection.dart';
import 'package:sign_in_interface/Quiz/lib/models/dto/quiz_result.dart';
import 'package:sign_in_interface/Quiz/lib/models/option.dart';
import 'package:sign_in_interface/Quiz/lib/models/question.dart';
import 'package:sign_in_interface/Quiz/lib/models/quiz.dart';
import 'package:sign_in_interface/Quiz/lib/models/quiz_history.dart';
import 'package:sign_in_interface/Quiz/lib/screens/quiz_result_screen.dart';
import 'package:sign_in_interface/Quiz/lib/services/quiz_engine.dart';
import 'package:sign_in_interface/Quiz/lib/stores/quiz_store.dart';
import 'package:sign_in_interface/Quiz/lib/widgets/disco_button.dart';
import 'package:sign_in_interface/Quiz/lib/widgets/question_option.dart';
import 'package:sign_in_interface/Quiz/lib/widgets/time_indicator.dart';
import 'package:sign_in_interface/Widgets/roundCardClipper.dart';

// ignore: must_be_immutable
class QuizScreen extends StatefulWidget {
  static const routeName = '/quiz';
  late Quiz quiz;
  QuizScreen(this.quiz, {Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState(quiz);
}

class _QuizScreenState extends State<QuizScreen> with WidgetsBindingObserver {
  late QuizEngine engine;
  late QuizStore store;
  late Quiz quiz;
  Question? question;
  Timer? progressTimer;
  AppLifecycleState? state;

  int _remainingTime = 0;
  Map<int, OptionSelection> _optionSerial = {};

  _QuizScreenState(this.quiz) {
    store = QuizStore();
    engine = QuizEngine(quiz, onNextQuestion, onQuizComplete, onStop);
  }

  @override
  void initState() {
    engine.start();
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    this.state = state;
  }

  @override
  void dispose() {
    if (progressTimer != null && progressTimer!.isActive) {
      progressTimer!.cancel();
    }
    engine.stop();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            //  alignment: Alignment.center,
            //padding: EdgeInsets.all(10),
            decoration: ThemeHelper.fullScreenBgBoxDecoration(),

            child: Stack(
              children: [
                Positioned(
                  top: 150,
                  child: Container(child: quizQuestion()),
                ),

                Positioned(
                  bottom: 0,
                  child: Container(
                    child: questionOptions(),
                  ),
                ),
                Positioned(
                  top: 150,
                  child: Container(child: quizQuestion()),
                ),
                Positioned(
                  child: Container(child: screenHeader()),
                ),
                Positioned(
                  bottom: 120,
                  child: Container(
                    child: quizProgress(),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  child: Container(
                    child: footerButton(),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 2,
                  child: Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(162, 255, 255, 255)),
                      child: GestureDetector(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )),
                ),
                // footerButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget screenHeader() {
    return ClipPath(
      clipper: BackgroundClipper_2(),
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.yellow.shade900,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25))),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              quiz.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontFamily: "ShinyBalloonDemo",
              ),
            ),
          ),
        ),
      ),
      // margin: EdgeInsets.only(bottom: 20),
    );
  }

  Widget quizQuestion() {
    return ClipPath(
      clipper: BackgroundClipper_2(),
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width,

        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(10),
        // margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(26))),
        child: Text(
          question?.text ?? "",
          style: TextStyle(
            color: Colors.teal,
            fontSize: 25,
            fontFamily: "BubblegumSans",
          ),
        ),
      ),
    );
  }

  Widget questionOptions() {
    return Container(
      height: MediaQuery.of(context).size.height / 1.6,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color: Colors.tealAccent.shade700,
        gradient: LinearGradient(
          colors: [Colors.cyan, Colors.green],
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 55),
        child: Column(
          children: List<Option>.from(question?.options ?? []).map((e) {
            int optionIndex = question!.options.indexOf(e);
            var optWidget = GestureDetector(
              onTap: () {
                setState(() {
                  engine.updateAnswer(
                      quiz.questions.indexOf(question!), optionIndex);
                  for (int i = 0; i < _optionSerial.length; i++) {
                    _optionSerial[i]!.isSelected = false;
                  }
                  _optionSerial.update(optionIndex, (value) {
                    value.isSelected = true;
                    return value;
                  });
                });
              },
              child: QuestionOption(
                optionIndex,
                _optionSerial[optionIndex]!.optionText,
                e.text,
                isSelected: _optionSerial[optionIndex]!.isSelected,
              ),
            );
            return optWidget;
          }).toList(),
        ),
      ),
    );
  }

  Widget quizProgress() {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: TimeIndicator(
              question?.duration ?? 1,
              _remainingTime,
              () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "$_remainingTime Seconds",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "BubblegumSans",
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget footerButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DiscoButton(
            onPressed: () {
              setState(() {
                engine.stop();
                if (progressTimer != null && progressTimer!.isActive) {
                  progressTimer!.cancel();
                }
              });
              Navigator.pop(context);
            },
            child: Text(
              "Cancel",
              style: TextStyle(fontSize: 20, fontFamily: "BubblegumSans"),
            ),
            width: 130,
            height: 50,
          ),
          DiscoButton(
            onPressed: () {
              engine.next();
            },
            child: Text(
              "Next",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "BubblegumSans"),
            ),
            isActive: true,
            width: 130,
            height: 50,
          ),
        ],
      ),
    );
  }

  void onNextQuestion(Question question) {
    setState(() {
      if (progressTimer != null && progressTimer!.isActive) {
        _remainingTime = 0;
        progressTimer!.cancel();
      }

      this.question = question;
      _remainingTime = question.duration;
      _optionSerial = {};
      for (var i = 0; i < question.options.length; i++) {
        _optionSerial[i] = OptionSelection(String.fromCharCode(65 + i), false);
      }
    });

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime >= 0) {
        try {
          if (mounted) {
            setState(() {
              progressTimer = timer;
              _remainingTime--;
            });
          }
        } catch (ex) {
          timer.cancel();
          print(ex.toString());
        }
      }
    });
  }

  void onQuizComplete(Quiz quiz, double total, Duration takenTime) {
    if (mounted) {
      setState(() {
        _remainingTime = 0;
      });
    }
    progressTimer!.cancel();
    store.getCategoryAsync(quiz.categoryId).then((category) {
      store
          .saveQuizHistory(QuizHistory(
              quiz.id,
              quiz.title,
              category.id,
              "$total/${quiz.questions.length}",
              total,
              quiz.questions.length,
              takenTime.format(),
              DateTime.now(),
              "Complete"))
          .then((value) {
        Navigator.pushReplacementNamed(context, QuizResultScreen.routeName,
            arguments: QuizResult(quiz, total));
      });
    });
  }

  void onStop(Quiz quiz) {
    _remainingTime = 0;
    progressTimer!.cancel();
  }
}
