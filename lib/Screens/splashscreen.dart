import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:Online_exam_App/Screens/Dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.lightGreenAccent[700],
      seconds: 5,
      navigateAfterSeconds: new Dashboard(),
      title: Text('GLA UNIVERSITY',textScaleFactor: 2,style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 16)),
      image: Image.asset('assets/ab3.png'),
      imageBackground: null,
      loadingText: Text("Please Wait...",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      photoSize: 200.0,
      loaderColor: Colors.lightGreenAccent[400],
    );
  }
}
