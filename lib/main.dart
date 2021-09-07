import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Online_exam_App/Screens/mainscreen.dart';
import 'package:Online_exam_App/Screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          canvasColor: Colors.white
      ),
      title: "Gla Student Login App",
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      //initialRoute: ,
    );
  }
}
