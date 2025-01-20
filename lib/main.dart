import 'package:elevate_task/View/Home_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home:  AnimatedSplashScreen(
          duration: 4000,
          splash: Column(
            children: <Widget>[
              const Image(image: AssetImage('assets/images/Logo.png')),
            ],
          ),
          nextScreen:const Home(),
          splashTransition: SplashTransition.fadeTransition,
          //pageTransitionType: PageTransitionType.scale,
          splashIconSize:400,
          backgroundColor: Colors.blue.shade900));

  }
}

