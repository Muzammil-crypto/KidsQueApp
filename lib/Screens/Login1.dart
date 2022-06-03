import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sign_in_interface/Screens/Signup.dart';
import 'package:sign_in_interface/Screens/AnimateChoices.dart';
import 'package:sign_in_interface/Screens/choicesScreen.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

import '../Widgets/Clipper.dart';
import '../Widgets/customAppBar.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _globalFormKey = GlobalKey<FormState>();
  bool _hidepassword = true;
  bool _isAPIcallProcess = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isLoading = false;
  String? _username;
  String? _password;

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
                // Positioned(
                //     top: 40,
                //     left: 20,
                //     child: Container(
                //       height: MediaQuery.of(context).size.height / 10,
                //       child: IconButton(
                //         icon: Icon(
                //           Icons.arrow_back_ios,
                //           size: 20,
                //           color: Colors.white,
                //         ),
                //         onPressed: () => {
                //           Navigator.push(context,
                //               MaterialPageRoute(builder: (context) => SignUp()))
                //         },
                //       ),
                //     )),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 9),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 65.0, bottom: 0),
                          child: Container(
                              height: MediaQuery.of(context).size.height / 5,
                              child: Center(
                                child: Text("Login",
                                    style: TextStyle(
                                        fontFamily: "ShinyBalloonDemo",
                                        fontSize: 60,
                                        color: Colors.white)),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: TextFormField(
                            controller: _emailController,
                            validator: (onValidateVal) {
                              if (onValidateVal!.isEmpty) {
                                return ("Email Can't be empty");
                              }
                              return null;
                            },
                            // onSaved: (onSavedVal) {
                            //   _username = onSavedVal;
                            // },
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
                                hintText: 'Enter Your Username',
                                hintStyle: TextStyle(
                                    fontFamily: "BubblegumSans",
                                    fontSize: 14.0,
                                    color: Colors.black)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: TextFormField(
                            controller: _passwordController,
                            validator: (onValidateVal) {
                              if (onValidateVal!.isEmpty) {
                                return ("Password Can't be empty");
                              }
                              return null;
                            },
                            // onSaved: (onSavedVal) {
                            //   _password = onSavedVal;
                            // },
                            obscureText: _hidepassword,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                contentPadding:
                                    new EdgeInsets.symmetric(vertical: 0.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                fillColor: Colors.white,
                                filled: true,
                                suffixIcon: IconButton(
                                  color: Colors.yellow.shade900,
                                  icon: Icon(
                                    _hidepassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () => setState(() {
                                    _hidepassword = !_hidepassword;
                                  }),
                                ),
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
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 1.6,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.2,
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/svg.png'))),
                  ),
                ),
                Positioned(
                  right: 30,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 220),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                            fontStyle: FontStyle.italic,
                            fontFamily: "BubblegumSans"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 220),
                    child: TextButton(
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp())),
                      },
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Text(
                        'New User? Signup Here',
                        style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                            fontStyle: FontStyle.italic,
                            fontFamily: "BubblegumSans"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height / 3.5,
                  child: SingleChildScrollView(
                    child: RaisedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => DrawerAnimated()));
                        setState(() {
                          isLoading = true;
                        });
                        login();
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  login() async {
    try {
      var response = await Dio()
          .post("https://pakque2.herokuapp.com/api/auth/local", data: {
        "identifier": _emailController.text,
        "password": _passwordController.text,
      });

      if (response.statusCode == 200) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomepageScreen()),
            (route) => false);
      }
    } on DioError catch (e) {
      print(e.response);
      setState(() {
        isLoading = false;
      });
    }
  }
}
