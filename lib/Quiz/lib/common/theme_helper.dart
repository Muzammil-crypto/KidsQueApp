import 'package:flutter/material.dart';

class ThemeHelper {
  static Color primaryColor = Color.fromARGB(255, 250, 110, 35);
  static Color accentColor = Colors.green;
  static Color shadowColor = Color(0xffa2a6af);

  static ThemeData getThemeData() {
    return ThemeData(
      fontFamily: 'Langar-Regular',
      //primarySwatch: Colors.deepPurple,
      colorScheme: ColorScheme.light(
          primary: Color.fromARGB(255, 231, 112, 112), secondary: Colors.black),
      textTheme: TextTheme(
          headline3: TextStyle(
            color: accentColor,
            fontFamily: 'Langar-Regular',
          ),
          headline4: TextStyle(
            color: accentColor,
            fontFamily: 'Langar-Regular',
          )),
    );
  }

  static BoxDecoration fullScreenBgBoxDecoration(
      {String backgroundAssetImage = "assets/bgnew.jpg"}) {
    return BoxDecoration(
      color: Colors.yellow.shade900,
      image: DecorationImage(
          image: AssetImage(backgroundAssetImage), fit: BoxFit.cover),
    );
  }

  static roundBoxDeco({Color color = Colors.white, double radius = 15}) {
    return BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.all(Radius.circular(radius)));
  }
}
