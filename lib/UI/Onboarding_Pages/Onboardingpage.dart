import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sutraq/UI/Onboarding_Pages/Login/login.dart';
import 'package:sutraq/UI/Try_Sutraq/tipone.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  static int initialpage = 0;
  int _currentindex;
  PageController _controller = PageController(
    initialPage: initialpage,
  );

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.8,
            width: double.infinity,
            child: PageView(
              controller: _controller,
              onPageChanged: (currentindex) {
                setState(() {
                  _currentindex = currentindex;
                });
              },
              children: <Widget>[
                Container(
                  child: Image.asset("images/onboardingone.png"),
                ),
                Container(
                  child: Image.asset("images/onboardingtwo.png"),
                ),
                Container(
                  child: Image.asset("images/onboardingthree.png"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 35,
          ),
          Container(
            child: new DotsIndicator(
              dotsCount: 3,
              position: _currentindex == null
                  ? initialpage.toDouble()
                  : _currentindex.toDouble(),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 35,
          ),
          _currentindex == null
              ? ReusableExpand(
                  title: "Send Money Anywhere",
                  description:
                      "With our unique technology, you can get money anywhere in the world.",
                )
              : Center(),
          _currentindex == 0
              ? ReusableExpand(
                  title: "Send Money Anywhere",
                  description:
                      "With our unique technology, you can get money anywhere in the world.",
                )
              : Center(),
          _currentindex == 1
              ? ReusableExpand(
                  title: "Safe & Secured",
                  description:
                      "Safety of your funds is guaranteed. We’ve got you covered 24/7.",
                )
              : Center(),
          _currentindex == 2
              ? ReusableExpand(
                  title: "Unbeatable Support",
                  description:
                      "Send money to other sutraq users free of charge, with no additional fee.",
                )
              : Center(),
        ],
      ),
    );
  }
}

class ReusableExpand extends StatelessWidget {
  String title;
  String description;
  ReusableExpand({this.title, this.description});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            color: Colors.green),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height / 35,
                    color: Colors.white),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35,
              ),
              Text(
                description,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF051F0E),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Material(
                      color: Color(0xFF051F0E),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        splashColor: Colors.red,
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.height / 30),
                          ),
                        ),
                      ))),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TrySutraq()));
                },
                child: Text(
                  "TRY SUTRAQ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height / 30,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
