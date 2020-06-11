import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sutraq/UI/Try_Sutraq/depositfundetwo.dart';
import 'package:sutraq/UI/Try_Sutraq/transactionpin.dart';

class AddBankCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DepositFundTwo()));
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
              Text(
                "Add New Bank Card",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height / 27,
                    color: Colors.black),
              ),
              Text(
                "Ensure to fill in the neccessary",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 45,
                    color: Colors.black38),
              ),
              Text(
                "details of the recipient in order to",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 45,
                    color: Colors.black38),
              ),
              Text(
                "continue",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 45,
                    color: Colors.black38),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
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
              SizedBox(
                height: 4,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Card Number",
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
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 30,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 30),
                      hintText: "Your Crad Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Expire Date",
                          style: TextStyle(
                              color: Color(0xFF969696),
                              fontSize:
                                  MediaQuery.of(context).size.height / 40),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 30,
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 30),
                              hintText: "MM/YY",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "CVV",
                          style: TextStyle(
                              color: Color(0xFF969696),
                              fontSize:
                                  MediaQuery.of(context).size.height / 45),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 30,
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 30),
                              hintText: "CVV",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                        ),
                      ),
                    ],
                  ),
                ],
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
                                  builder: (context) => Transactionpin()));
                        },
                        splashColor: Colors.red,
                        child: Center(
                          child: Text(
                            "Confirm",
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
      ),
    );
  }
}
