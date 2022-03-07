import 'package:flutter/material.dart';
import 'package:sign_in_interface/Login1.dart';
import 'package:sign_in_interface/Signup.dart';
import 'package:sign_in_interface/ZoomDrawer.dart';
import 'package:sign_in_interface/topics.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('abc1.png'), fit: BoxFit.cover)),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 330, right: 100),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('text.png'))),
                ),
              )),
              Positioned(
                  child: Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('svg.png'))),
                ),
              )),
              Positioned(
                bottom: 50,
                child: SingleChildScrollView(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
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
                            minWidth: 350.0,
                            minHeight: 50.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: const Text(
                          'Start Learning',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
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
    );
  }
}
