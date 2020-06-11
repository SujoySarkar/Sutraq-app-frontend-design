import 'package:flutter/material.dart';
import 'package:sutraq/UI/successpage/success.dart';

class Transactionpintwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height / 22,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width / 6,
              child: Image.asset("images/verified.png"),
            ),
            Text(
              "Create a transaction Pin",
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height / 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Re-enter pin to confirm",
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height / 45,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 6,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 25,
                        fontWeight: FontWeight.bold),
                    obscureText: true,
                    maxLength: 1,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 6,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 25,
                        fontWeight: FontWeight.bold),
                    obscureText: true,
                    maxLength: 1,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 6,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 25,
                        fontWeight: FontWeight.bold),
                    obscureText: true,
                    maxLength: 1,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 6,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 25,
                        fontWeight: FontWeight.bold),
                    obscureText: true,
                    maxLength: 1,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Success()));
                      },
                      splashColor: Colors.red,
                      child: Center(
                        child: Text(
                          "Confirm Pin",
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
