import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sutraq/UI/Onboarding_Pages/Onboardingpage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.fade,
                duration: Duration(seconds: 1),
                child: OnBoardingPage()));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // for full screen page

    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width / 3,
          child: Image.asset(
            "images/splashlogo.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
