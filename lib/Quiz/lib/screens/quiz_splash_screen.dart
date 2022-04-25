import 'package:flutter/material.dart';
import 'package:sign_in_interface/Quiz/lib/screens/home_screen.dart';

class QuizSplashScreen extends StatefulWidget {
  static const routeName = '/';
  const QuizSplashScreen({Key? key}) : super(key: key);

  @override
  _QuizSplashScreenState createState() => _QuizSplashScreenState();
}

class _QuizSplashScreenState extends State<QuizSplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/SplashScreen.bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Image(
            image: AssetImage("assets/images/SplashScreen.shape.png"),
          ),
        ),
      ),
    );
  }
}
