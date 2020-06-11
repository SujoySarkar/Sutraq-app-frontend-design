import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sutraq/UI/Onboarding_Pages/Login/forgotpassword.dart';
import 'package:sutraq/UI/Onboarding_Pages/Login/tipfive.dart';

import 'package:sutraq/UI/Try_Sutraq/tipone.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 11,
                  width: MediaQuery.of(context).size.height / 11,
                  child: Image.asset("images/splashicon.png"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height / 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Enter your details to continue",
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: MediaQuery.of(context).size.height / 37,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Email Address",
                    style: TextStyle(
                        color: Color(0xFF969696),
                        fontSize: MediaQuery.of(context).size.height / 40),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.height / 2,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: MediaQuery.of(context).size.height / 30, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.green,
                        ),
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height / 30),
                        hintText: "presh@mail.com",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                        color: Color(0xFF969696),
                        fontSize: MediaQuery.of(context).size.height / 40),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.height / 2,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 30,
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.green,
                        ),
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height / 30),
                        hintText: "***********",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 35,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Forgotpassword()));
                  },
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height / 40),
                      )),
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
                        color: Color(0xFF62BB46),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Tipfive()));
                          },
                          splashColor: Colors.red,
                          child: Center(
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 30),
                            ),
                          ),
                        ))),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TrySutraq()));
                  },
                  child: RichText(
                    text: TextSpan(
                        text: "Need an Account?",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 40,
                            color: Colors.black),
                        children: [
                          TextSpan(
                              text: "Try ",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.height / 33)),


                          TextSpan(
                              text: "Su",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.height / 33)),
                          TextSpan(
                              text: "traq",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 40)),
                        ]),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.height / 12,
                  child: Image.asset("images/fingerprint.png"),
                ),
                Text(
                  "Tap to use fingerprint",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height / 40),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
