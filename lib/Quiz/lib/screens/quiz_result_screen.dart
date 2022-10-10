import 'package:flutter/material.dart';
import 'package:sign_in_interface/Quiz/lib/common/theme_helper.dart';
import 'package:sign_in_interface/Quiz/lib/models/dto/quiz_result.dart';
import 'package:sign_in_interface/Quiz/lib/screens/quiz_history_screen.dart';
import 'package:sign_in_interface/Quiz/lib/widgets/disco_button.dart';
import 'package:sign_in_interface/Widgets/roundCardClipper.dart';

// ignore: must_be_immutable
class QuizResultScreen extends StatefulWidget {
  static const routeName = '/quizResult';
  QuizResult result;
  QuizResultScreen(this.result, {Key? key}) : super(key: key);

  @override
  _QuizResultScreenState createState() => _QuizResultScreenState(this.result);
}

class _QuizResultScreenState extends State<QuizResultScreen> {
  QuizResult result;
  int totalQuestions = 0;
  double totalCorrect = 0;

  _QuizResultScreenState(this.result);

  @override
  void initState() {
    setState(() {
      totalCorrect = result.totalCorrect;
      totalQuestions = result.quiz.questions.length;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          decoration: ThemeHelper.fullScreenBgBoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              quizResultInfo(result),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomButtons() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DiscoButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Close",
              style: TextStyle(color: Colors.deepPurple, fontSize: 20),
            ),
            width: 150,
            height: 50,
          ),
          DiscoButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, QuizHistoryScreen.routeName);
            },
            child: Text(
              "History",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            width: 150,
            height: 50,
            isActive: true,
          ),
        ],
      ),
    );
  }

  Widget quizResultInfo(QuizResult result) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            top: 120,
            child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                  top: 130,
                ),
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    gradient:
                        LinearGradient(colors: [Colors.cyan, Colors.green])),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Image(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 1.1,
                        image: AssetImage("assets/trophy.png"),
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "You did a great Job!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "ShinyBalloonDemo"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "You have completed the quiz",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "BubblegumSans"),
                      ),
                      Text(
                        "Your Score",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "BubblegumSans"),
                      ),
                      Text(
                        "$totalCorrect/$totalQuestions",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "BubblegumSans"),
                      ),
                    ],
                  ),
                )),
          ),
          Positioned(
            child: ClipPath(
              clipper: BackgroundClipper_2(),
              child: Container(
                color: Colors.yellow.shade900,
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150.0),
                    child: Text(
                      "Congratulations",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: "ShinyBalloonDemo"),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 35,
            child: Container(
              //  color: Colors.yellow.shade900,
              height: 170,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage(
                  "assets/bal.png",
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: bottomButtons(),
            ),
          )
        ],
      ),
    );
  }
}
