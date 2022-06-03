import 'package:flutter/material.dart';
import 'package:sign_in_interface/Quiz/lib/screens/home_screen.dart';
import 'package:sign_in_interface/Quiz/lib/widgets/disco_button.dart';
import 'package:sign_in_interface/Screens/content_Screen.dart';
import 'package:sign_in_interface/Widgets/Clipper.dart';

class QuizSplashScreen extends StatefulWidget {
  static const routeName = '/';
  const QuizSplashScreen({Key? key}) : super(key: key);

  @override
  _QuizSplashScreenState createState() => _QuizSplashScreenState();
}

class _QuizSplashScreenState extends State<QuizSplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: SingleChildScrollView(
        child: ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bgb.png'), fit: BoxFit.fill)),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                    child: Container(
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.8,
                      left: MediaQuery.of(context).size.width / 20),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContentScreen())),
                        },
                      )
                    ],
                  ),
                )),
                Positioned(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 25,
                          ),
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width / 1.19,
                          child: Image(image: AssetImage("assets/ani27.gif")),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height / 2,
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(right: 180),
                        child: Text(
                          "Continuing....",
                          style: TextStyle(
                              fontFamily: "BubblegumSans",
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 25),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        margin: EdgeInsets.only(top: 15),
                        child: Text(
                          "Do You feel confident? Here you’ll challenge some of the questions regarding Pakistan Studies.",
                          style: TextStyle(
                              fontFamily: "BubblegumSans",
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      )
                    ])),
                Positioned(
                    bottom: 60,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: 500,
                      child: Image(
                        image: AssetImage("assets/ani26.gif"),
                      ),
                    )),
                // Positioned(
                //   bottom: MediaQuery.of(context).size.height / 4.7,
                //   child: SingleChildScrollView(
                //     child: RaisedButton(
                //       onPressed: () {
                //         // Navigator.push(
                //         //     context,
                //         //     MaterialPageRoute(
                //         //         builder: (context) => HomeScreen()));
                //       },
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(80.0)),
                //       padding: const EdgeInsets.all(0.0),
                //       child: Ink(
                //         decoration: const BoxDecoration(
                //           color: Color(0xFFF57F17),
                //           borderRadius: BorderRadius.all(Radius.circular(80.0)),
                //         ),
                //         child: Container(
                //           constraints: const BoxConstraints(
                //               minWidth: 300.0,
                //               minHeight:
                //                   40.0), // min sizes for Material buttons
                //           alignment: Alignment.center,
                //           child: const Text(
                //             'Proceeding to the Quiz',
                //             textAlign: TextAlign.center,
                //             style: TextStyle(
                //                 fontFamily: "BubblegumSans",
                //                 color: Colors.white,
                //                 fontWeight: FontWeight.w400,
                //                 fontSize: 22),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
