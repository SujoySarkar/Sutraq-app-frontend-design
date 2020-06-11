import 'package:flutter/material.dart';
class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.blueAccent,child: Icon(Icons.add),),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height / 45,),
            Text(
              "My Cards",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height / 30,
                  color: Colors.black),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/35,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xFF063593),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "VISA",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height/23,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "CARD NUMBER",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 45,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "**** **** **** *379",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height/28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/45,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "CARD HOLDER NAME",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height/45,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                "EXPIRE DATE",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height/45,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Umar Murtala",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height/30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "02/25",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height/30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.purple,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "VISA",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height/23,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "CARD NUMBER",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 45,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "**** **** **** *379",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height/28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/45,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "CARD HOLDER NAME",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height/45,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                "EXPIRE DATE",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height/45,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Umar Murtala",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height/30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "02/25",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height/30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
            SizedBox(height: 15,),
            Expanded(child: Card(
              child: Container(
                height: MediaQuery.of(context).size.height/3,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Recent Transaction",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height/36,
                              color: Colors.black),
                        ),
                      ),
                      ListTile(
                        title: Text("Access Bank",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        subtitle: Text("28, Jan 2020"),
                        leading: CircleAvatar(
                          backgroundColor: Color(0xFFCBEEEA),
                          child: Center(
                            child: Icon(Icons.call_received,color: Colors.green,),
                          ),
                        ),
                        trailing: Text("190,000",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}