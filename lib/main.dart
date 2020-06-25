import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sutraq/UI/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}

