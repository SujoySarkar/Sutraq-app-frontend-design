import 'package:flutter/material.dart';
import 'package:sutraq/UI/successpage/tipfour.dart';
import 'package:sutraq/UI/successpage/uploadstepone.dart';

class Uploadsteptwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F3F4),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Uploadstepone()));
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.height/30,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
              ),
              Text(
                "I.D Upload",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height / 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "We need a valid government issued I.D to",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: MediaQuery.of(context).size.height / 45,
                ),
              ),
              Text(
                "continue.",
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
                                Icons.insert_drive_file,
                                color: Colors.black54,
                                size: MediaQuery.of(context).size.height/20,
                              ),
                              Text(
                                "Tap to select file",
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
                        "Allows .docx, .doc, .pdf, jpeg, png",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height/40,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "formats",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/20,
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
                                          builder: (context) => Allset()));
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
                        "Step 2/2",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
