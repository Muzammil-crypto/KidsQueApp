import 'package:dio/dio.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sign_in_interface/Screens/Signup.dart';
import 'package:sign_in_interface/Screens/HomepageScreen.dart';
import 'package:sign_in_interface/Screens/choicesScreen.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

import '../Widgets/background_Clipper.dart';
import '../Widgets/customAppBar.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
  bool _hidepassword = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isLoading = false;

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
                    image: AssetImage('assets/bgnew.jpg'), fit: BoxFit.fill)),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 9),
                    child: Form(
                      key: formkey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 65.0, bottom: 0),
                            child: Container(
                                height: MediaQuery.of(context).size.height / 5,
                                child: Center(
                                  child: Text("Login",
                                      style: TextStyle(
                                        fontFamily: "ShinyBalloonDemo",
                                        fontSize: 60,
                                        color: Colors.green,
                                      )),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30),
                            child: TextFormField(
                              controller: _emailController,
                              validator: (email) => email != null &&
                                      !EmailValidator.validate(email)
                                  ? 'Enter a Valid Email Adress'
                                  : null,
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
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 1.6,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.2,
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/imp2.gif'))),
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
                            color: Colors.black,
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
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            fontStyle: FontStyle.italic,
                            fontFamily: "BubblegumSans"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height / 3.7,
                  child: SingleChildScrollView(
                    child: RaisedButton(
                      onPressed: () {
                        final form = formkey.currentState!;
                        if (form.validate()) {}
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
