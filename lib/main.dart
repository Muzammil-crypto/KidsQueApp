import 'package:flutter/material.dart';
import 'package:sign_in_interface/Quiz/lib/common/route_generator.dart';
import 'package:sign_in_interface/Quiz/lib/screens/quiz_splash_screen.dart';

import 'package:sign_in_interface/Quiz/lib/stores/quiz_store.dart';
import 'package:sign_in_interface/Screens/AnimateChoices.dart';
import 'package:sign_in_interface/Screens/ProvinceDetailScreen.dart';
import 'package:sign_in_interface/Screens/ProvincesListScreen.dart';

import 'package:sign_in_interface/Screens/splash_screen.dart';

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
      home: ProvinceDetailScreen(
        id: 1,
      ),
    );
  }
}
