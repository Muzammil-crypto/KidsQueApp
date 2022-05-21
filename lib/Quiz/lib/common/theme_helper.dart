import 'package:flutter/material.dart';

class ThemeHelper {
  static Color primaryColor = Color(0xFFE65100);
  static Color accentColor = Color(0xff20aebe);
  static Color shadowColor = Color(0xffa2a6af);

  static ThemeData getThemeData() {
    return ThemeData(
      fontFamily: 'Langar-Regular',
      //primarySwatch: Colors.deepPurple,
      colorScheme: ColorScheme.light(
          primary: Color.fromARGB(255, 255, 255, 255), secondary: Colors.teal),
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
      {String backgroundAssetImage = "assets/bgb.png"}) {
    return BoxDecoration(
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
