import 'package:flutter/material.dart';
import 'package:sutraq/UI/successpage/uploadsteptwo.dart';

class Uploadstepone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F3F4),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height/25,
            ),
            Text(
              "Upload Photo",
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height / 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Upload a photo of yourself. A picture showing",
              style: TextStyle(
                color: Colors.black38,
                fontSize: MediaQuery.of(context).size.height / 45,
              ),
            ),
            Text(
              "your face properly is recommended",
              style: TextStyle(
                color: Colors.black38,
                fontSize: MediaQuery.of(context).size.height / 45,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.height / 1.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.height / 3,
                            child: Image.asset("images/rectangle.png")),
                        Positioned(
                            child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.image,
                              color: Colors.black54,
                              size: MediaQuery.of(context).size.height/20,
                            ),
                            Text(
                              "Tap to select photo",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height / 38,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ))
                      ],
                    ),
                    Text(
                      "Allows png, jpeg formats",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 33,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.height / 3,
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
                                        builder: (context) => Uploadsteptwo()));
                              },
                              splashColor: Colors.red,
                              child: Center(
                                child: Text(
                                  "NEXT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              30),
                                ),
                              ),
                            ))),
                    Text(
                      "Step 1/2",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 38,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
