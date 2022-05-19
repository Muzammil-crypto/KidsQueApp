import 'package:flutter/material.dart';

import '../Widgets/Clipper.dart';
import 'Signup.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   Future.delayed(Duration(seconds: 3), () {
  //     Navigator.of(context)
  //         .pushReplacement(MaterialPageRoute(builder: (ctx) => SignUp()));
  //   });
  //   super.initState();
  // }

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
                    image: AssetImage('assets/sp12.jpeg'), fit: BoxFit.cover)),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                // Positioned(
                //   child: Container(
                //     margin: EdgeInsets.only(
                //       bottom: MediaQuery.of(context).size.height / 2,
                //       left: MediaQuery.of(context).size.width / 3,
                //     ),
                //     height: 250,
                //     width: 250,
                //     child: Image(image: AssetImage("assets/balloon.png")),
                //   ),
                // ),
                Positioned(
                    top: 160,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 0, right: 120),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: MediaQuery.of(context).size.width,
                        child: Column(children: [
                          Container(
                            child: Text(
                              "PakQue",
                              style: TextStyle(
                                  fontFamily: "Flavors",
                                  fontSize: 60,
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2),
                            ),
                          ),
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 2.2),
                            child: Text("Kid",
                                style: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  fontSize: 60,
                                  color: Colors.white,
                                )),
                          )
                        ]),
                      ),
                    )),
                // Positioned(
                //     top: MediaQuery.of(context).size.height / 2.5,
                //     child: Padding(
                //       padding: const EdgeInsets.only(top: 15.0),
                //       child: Container(
                //         height: MediaQuery.of(context).size.height / 2.8,
                //         width: MediaQuery.of(context).size.width,
                //         decoration: BoxDecoration(
                //             image: DecorationImage(
                //                 image: AssetImage('assets/svg.png'))),
                //       ),
                //     )),
                Positioned(
                  bottom: 50,
                  child: SingleChildScrollView(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF57F17),
                          //  color: Color.fromARGB(255, 1, 68, 3),

                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                              minWidth: 320.0,
                              minHeight:
                                  50.0), // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: const Text(
                            'Start Learning Today',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "BubblegumSans",
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
