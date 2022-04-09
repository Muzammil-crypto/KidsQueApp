import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_in_interface/Login1.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('bg1.jpg'), fit: BoxFit.cover)),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          height: 80,
                          child: Center(
                            child: Text("Register",
                                style: TextStyle(
                                    fontFamily: "BubblegumSans",
                                    fontSize: 60,
                                    color: Color.fromARGB(255, 230, 65, 120))),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              contentPadding:
                                  new EdgeInsets.symmetric(vertical: 0.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.yellow.shade900,
                                ), // icon is 48px widget.
                              ),
                              hintText: 'Enter Your Name here',
                              hintStyle: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  fontSize: 14.0,
                                  color: Colors.yellow.shade900)),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              contentPadding:
                                  new EdgeInsets.symmetric(vertical: 0.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.yellow.shade900,
                                ), // icon is 48px widget.
                              ),
                              hintText: 'Enter Your Email Address',
                              hintStyle: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  fontSize: 14.0,
                                  color: Colors.yellow.shade900)),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              contentPadding:
                                  new EdgeInsets.symmetric(vertical: 0.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.yellow.shade900,
                                ), // icon is 48px widget.
                              ),
                              hintText: 'Enter Your Password',
                              hintStyle: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  fontSize: 14.0,
                                  color: Colors.yellow.shade900)),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              contentPadding:
                                  new EdgeInsets.symmetric(vertical: 0.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.yellow.shade900,
                                ), // icon is 48px widget.
                              ),
                              hintText: 'Confirm Your Password',
                              hintStyle: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  fontSize: 14.0,
                                  color: Colors.yellow.shade900)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 390,
                child: Container(
                  height: 360,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('svg.png'))),
                ),
              ),
              Positioned(
                bottom: 260,
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
                            minHeight: 40.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: const Text(
                          'Register',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "BubblegumSans",
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 170,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(199, 255, 119, 0),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Text(
                    '< Or Connect with >',
                    style: TextStyle(
                        backgroundColor: Color.fromARGB(255, 248, 120, 162),
                        fontFamily: "BubblegumSans",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(top: 470.0),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  size: 25,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.instagram,
                                  size: 25,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
