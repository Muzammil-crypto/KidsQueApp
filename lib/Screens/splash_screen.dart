import 'package:flutter/material.dart';

import '../Widgets/Clipper.dart';
import 'Signup.dart';

class SplashScreen extends StatelessWidget {
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
                    image: AssetImage('bgb.png'), fit: BoxFit.cover)),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 0, right: 120),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.2,
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: [
                      Container(
                        child: Text(
                          "PakQue",
                          style: TextStyle(
                              fontFamily: "Flavors",
                              fontSize: 50,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 3.5),
                        child: Text(
                          "Kid",
                          style: TextStyle(
                              fontFamily: "BubblegumSans",
                              fontSize: 70,
                              color: Color.fromARGB(255, 255, 86, 142)),
                        ),
                      )
                    ]),
                  ),
                )),
                Positioned(
                    top: MediaQuery.of(context).size.height / 2.5,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.4,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image:
                                DecorationImage(image: AssetImage('svg.png'))),
                      ),
                    )),
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
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                              minWidth: 320.0,
                              minHeight:
                                  50.0), // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: const Text(
                            'Start Learning',
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
