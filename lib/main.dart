import 'package:flutter/material.dart';
import 'package:sign_in_interface/views/Screens/splash_screen.dart';

import 'core/stores/quiz_store.dart';
import 'core/routing/route_generator.dart';


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
      home: SplashScreen(),
    );
  }
}
