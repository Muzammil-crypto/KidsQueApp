// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sign_in_interface/Quiz/lib/common/route_generator.dart';
import 'package:sign_in_interface/Quiz/lib/screens/quiz_splash_screen.dart';
import 'package:sign_in_interface/Quiz/lib/stores/quiz_store.dart';
import 'package:sign_in_interface/Screens/About_us.dart';
import 'package:sign_in_interface/Screens/Login1.dart';
import 'package:sign_in_interface/Screens/Map.dart';
import 'package:sign_in_interface/Screens/Profile.dart';
import 'package:sign_in_interface/Screens/Signup.dart';
import 'package:sign_in_interface/Screens/chooice_screen.dart';
import 'package:sign_in_interface/Screens/contact_us.dart';
import 'package:sign_in_interface/Screens/content.dart';
import 'package:sign_in_interface/Screens/loading_screen.dart';
import 'package:sign_in_interface/Screens/performance_screen.dart';
import 'package:sign_in_interface/Screens/slider.dart';
import 'package:sign_in_interface/Screens/splash_screen.dart';
import 'package:sign_in_interface/Screens/timeline_screen.dart';
import 'package:sign_in_interface/Screens/topics.dart';
import 'package:sign_in_interface/Widgets/youtube_player_screen.dart';
import 'package:timeline_list/timeline.dart';

import 'Screens/Signup.dart';
import 'Screens/hero_screen.dart';
import 'Widgets/Clipper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await QuizStore.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
      //home: SplashScreen(),
      home: ContentScreen(),
    );
  }
}
