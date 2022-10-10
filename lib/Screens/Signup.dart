import 'dart:math';

import 'package:dio/dio.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sign_in_interface/Screens/Login1.dart';
import 'package:sign_in_interface/Screens/choicesScreen.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

import '../Widgets/background_Clipper.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formkey = GlobalKey<FormState>();

  bool _hidepassword = true;
  // bool _isAPIcallProcess = false;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String? _username;
  String? _password;
  String? _email;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: isLoading
          ? Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 3.2,
                width: MediaQuery.of(context).size.width / 0.5,
                child: Image(
                  image: AssetImage("assets/ani34.gif"),
                ),
              ),
            )
          : SingleChildScrollView(
              child: ClipPath(
                clipper: BackgroundClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/bgnew.jpg'),
                          fit: BoxFit.cover)),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Positioned(
                          top: 60,
                          left: 15,
                          child: GestureDetector(
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(99, 128, 124, 124),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login())),
                            },
                          )),
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 40),
                          child: Form(
                            key: formkey,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 20,
                                        bottom: 10),
                                    height:
                                        MediaQuery.of(context).size.height / 4,
                                    child: Center(
                                      child: Text("Register",
                                          style: TextStyle(
                                            fontFamily: "ShinyBalloonDemo",
                                            fontSize: 60,
                                            color: Colors.green,
                                          )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 30),
                                  child: TextFormField(
                                    controller: _usernameController,
                                    validator: (onValidateVal) {
                                      if (onValidateVal!.isEmpty ||
                                          onValidateVal == null) {
                                        return ("Username Can't be empty");
                                      }
                                      return null;
                                    },
                                    // onSaved: (onSavedVal) {
                                    //   _username = onSavedVal;
                                    // },
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            new EdgeInsets.symmetric(
                                                vertical: 0.0),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        fillColor: Colors.white,
                                        filled: true,
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.all(0.0),
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.yellow.shade900,
                                            size: 28,
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
                                    controller: _emailController,
                                    validator: (email) => email != null &&
                                            !EmailValidator.validate(email)
                                        ? 'Enter a Valid Email Adress'
                                        : null,
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            new EdgeInsets.symmetric(
                                                vertical: 0.0),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        fillColor: Colors.white,
                                        filled: true,
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.all(0.0),
                                          child: Icon(
                                            Icons.email,
                                            color: Colors.yellow.shade900,
                                          ), // icon is 48px widget.
                                        ),
                                        hintText: 'Enter Your Email',
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
                                            new EdgeInsets.symmetric(
                                                vertical: 0.0),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
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
                          height: 360,
                          width: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/imp2.gif'))),
                        ),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height / 3.7,
                        child: SingleChildScrollView(
                          child: ElevatedButton(
                            onPressed: () {
                              final form = formkey.currentState!;
                              if (form.validate()) {}

                              setState(() {
                                isLoading = true;
                              });
                              register();
                            },
                            // shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(80.0)),
                            // padding: const EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: const BoxDecoration(
                                color: Color(0xFFF57F17),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80.0)),
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
                        bottom: MediaQuery.of(context).size.height / 3,
                        child: Container(
                          height: 50,
                          child: TextButton(
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login())),
                            },
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  register() async {
    try {
      var response = await Dio()
          .post("https://pakque2.herokuapp.com/api/auth/local/register", data: {
        "username": _usernameController.text,
        "email": _emailController.text,
        'password': _passwordController.text,
      });
      print(response.data);
      if (response.statusCode == 200) {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => Login()), (route) => false);
      }
    } on DioError catch (e) {
      print(e.response);
      setState(() {
        isLoading = false;
      });
    }
    Fluttertoast.showToast(
      msg: "Enter valid Credentials",
      fontSize: 14,
    );
  }
}
