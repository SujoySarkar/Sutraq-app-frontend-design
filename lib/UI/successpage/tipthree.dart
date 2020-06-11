import 'package:flutter/material.dart';
import 'package:sutraq/UI/successpage/uploadstepone.dart';

class TipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenheight,
        width: screenwidth,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/tip.png"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: screenheight / 4,
                width: screenwidth / 4,
                child: Image.asset(
                  "images/idea.png",
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Good!",
                style: TextStyle(
                    color: Color(0xFF62BB46),
                    fontWeight: FontWeight.bold,
                    fontSize: screenwidth / 16),
              ),
              SizedBox(
                height: screenwidth / 15,
              ),
              Text(
                "Now tell us a bit about yourself",
                style: TextStyle(color: Colors.white, fontSize: screenwidth / 25),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
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
                                  builder: (context) => Uploadstepone()));
                        },
                        splashColor: Colors.red,
                        child: Center(
                          child: Text(
                            "KYC",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
