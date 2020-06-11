import 'package:flutter/material.dart';
import 'package:sutraq/UI/Dashboard/dashboard.dart';
class Tipfive extends StatelessWidget {
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
                "Do more with Sutraq!",
                style: TextStyle(
                    color: Color(0xFF62BB46),
                    fontWeight: FontWeight.bold,
                    fontSize: screenwidth / 16),
              ),
              SizedBox(
                height: screenwidth / 15,
              ),
              Text(
                "Just an additional tip of what you stand to",
                style:
                TextStyle(color: Colors.white, fontSize: screenwidth / 25),
              ),
              Text(
                " gain with us",
                style:
                TextStyle(color: Colors.white, fontSize: screenwidth / 25),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.green,
                    child: Center(child: Icon(Icons.check,color: Colors.white,)),
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: <Widget>[
                      Text("Send money anywhere in the",style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),),
                      Text("world for better rates.            ",style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 8,),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.green,
                    child: Center(child: Icon(Icons.check,color: Colors.white,)),
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: <Widget>[
                      Text("Receive money from friends and ",style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),),
                      Text("family from any part of the world.",style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 8,),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.green,
                    child: Center(child: Icon(Icons.check,color: Colors.white,)),
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: <Widget>[
                      Text("Have multiple account, holding",style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),),
                      Text("up to six different currencies.  ",style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),

                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
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
                                  builder: (context) => DashBoard()));
                        },
                        splashColor: Colors.red,
                        child: Center(
                          child: Text(
                            "Got It!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.height / 30),
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
