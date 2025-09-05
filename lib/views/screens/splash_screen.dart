import 'package:flutter/material.dart';
import '../Screens/Login1.dart';
import '../Widgets/background_Clipper.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      if (mounted) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (ctx) => Login()));
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: ClipPath(
        clipper: BackgroundClipper(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            margin: EdgeInsets.only(top: 5, bottom: 3),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Color.fromARGB(172, 24, 18, 18).withOpacity(0.5),
                      BlendMode.softLight),
                  image: AssetImage(
                    'assets/sp16.jpeg',
                  ),
                  fit: BoxFit.fill),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height / 4,
                      right: MediaQuery.of(context).size.width / 3,
                    ),
                    height: 120,
                    width: 120,
                    child: Image(
                      image: AssetImage("assets/balloon.png"),
                    ),
                  ),
                ),
                Positioned(
                    top: 90,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 60,
                        bottom: 0,
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: MediaQuery.of(context).size.width,
                        child: Column(children: [
                          Container(
                            child: Text(
                              "PakQue",
                              style: TextStyle(
                                  fontFamily: "ShinyBalloonDemo",
                                  fontSize: 50,
                                  color: Colors.green,
                                  //  fontWeight: FontWeight.bold,
                                  letterSpacing: 0),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                                // bottom: 100,
                                left: MediaQuery.of(context).size.width / 1.8),
                            child: Text("Kid",
                                style: TextStyle(
                                  fontFamily: "ShinyBalloonDemo",
                                  fontSize: 60,
                                  color: Colors.green,
                                )),
                          )
                        ]),
                      ),
                    )),
                Positioned(
                    bottom: 80,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Image(
                        image: AssetImage("assets/imp1.gif"),
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                  bottom: 30,
                  child: SingleChildScrollView(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(80.0)),
                      // padding: const EdgeInsets.all(0.0),
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
