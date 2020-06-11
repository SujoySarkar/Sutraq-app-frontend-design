import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  @override
  _ForgotpasswordState createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 12,
              width: MediaQuery.of(context).size.height / 12,
              child: Image.asset("images/splashicon.png"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Text(
              "Forgot Password?",
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height / 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Enter the email address associated with",
              style: TextStyle(
                color: Colors.black38,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
            Text(
              "your account to recover password.",
              style: TextStyle(
                color: Colors.black38,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Email Adress",
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
                      Icons.mail,
                      color: Colors.green,
                    ),
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height / 30),
                    hintText: "presh@mail.com",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)))),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
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
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 2,
                                    width:
                                        MediaQuery.of(context).size.height / 2,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              12,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              12,
                                          child:
                                              Image.asset("images/inbox.png"),
                                        ),
                                        Text(
                                          "Check your Inbox!",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "An email has been sent to you.",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                40,
                                          ),
                                        ),
                                        Text(
                                          " Click the link to reset your",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                40,
                                          ),
                                        ),
                                        Text(
                                          "password.",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                40,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                14,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                3,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF051F0E),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                            ),
                                            child: Material(
                                                color: Color(0xFF62BB46),
                                                child: InkWell(
                                                  onTap: () {},
                                                  splashColor: Colors.red,
                                                  child: Center(
                                                    child: Text(
                                                      "RECOVER PASSWORD",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height /
                                                              40),
                                                    ),
                                                  ),
                                                ))),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      splashColor: Colors.red,
                      child: Center(
                        child: Text(
                          "RECOVER PASSWORD",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height / 30),
                        ),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
