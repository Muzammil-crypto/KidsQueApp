import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/Login1.dart';

import '../Widgets/Clipper.dart';

class SignUp extends StatelessWidget {
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
                    image: AssetImage('assets/bgb.png'), fit: BoxFit.cover)),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 40),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 20, right: 20, top: 20, bottom: 10),
                            height: MediaQuery.of(context).size.height / 4,
                            child: Center(
                              child: Text("Register",
                                  style: TextStyle(
                                      fontFamily: "ShinyBalloonDemo",
                                      fontSize: 60,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 45),
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
                                    color: Colors.black)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 45),
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
                                    color: Colors.black)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 45),
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
                                    color: Colors.black)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 45),
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
                                    color: Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 1.6,
                  child: Container(
                    height: 360,
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/svg.png'))),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height / 3.7,
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
                              minWidth: 320.0,
                              minHeight:
                                  40.0), // min sizes for Material buttons
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
                  //right: 30,
                  bottom: 150,
                  //   child: Padding(
                  // padding: const EdgeInsets.only(top: 250),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(158, 255, 255, 255),
                          borderRadius: BorderRadius.circular(12)),
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Text(
                          'Already Have an account? Sign In',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              fontStyle: FontStyle.italic,
                              fontFamily: "BubblegumSans"),
                        ),
                      ),
                    ),
                    onTap: () => {},
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
