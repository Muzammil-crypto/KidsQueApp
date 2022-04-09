import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_in_interface/ZoomDrawer.dart';
import 'package:sign_in_interface/topics.dart';

import 'customAppBar.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('bg1.jpg'), fit: BoxFit.fill)),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 70.0, bottom: 80),
                        child: Container(
                          height: 80,
                          child: Center(
                            child: Text("Login",
                                style: TextStyle(
                                    fontFamily: "BubblegumSans",
                                    fontSize: 60,
                                    color: Color.fromARGB(255, 224, 67, 120))),
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
                              hintText: 'Enter Your Email here',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 350,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('svg.png'))),
                ),
              ),
              Positioned(
                bottom: 280,
                child: SingleChildScrollView(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DrawerAnimated()));
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
                          'Login',
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 330.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 45, left: 210),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontFamily: "BubblegumSans",
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
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
