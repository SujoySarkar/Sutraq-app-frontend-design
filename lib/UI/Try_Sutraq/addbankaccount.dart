import 'package:flutter/material.dart';
import 'package:sutraq/UI/Try_Sutraq/depositfundeone.dart';
import 'package:sutraq/UI/Try_Sutraq/depositfundetwo.dart';
import 'package:sutraq/UI/Try_Sutraq/transactionpin.dart';

class AddBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.width / 50,
              ),
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
                    radius: MediaQuery.of(context).size.height / 30,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text(
                "Add New Bank Account",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height / 27,
                    color: Colors.black),
              ),
              Text(
                "Ensure to fill in the neccessary details of the",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 45,
                    color: Colors.black38),
              ),
              Text(
                "recipient in order to continue",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 45,
                    color: Colors.black38),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 17,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Country",
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
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF969696)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Select Country",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.height / 30,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.arrow_downward,
                            color: Colors.green,
                          ),
                          onPressed: () {})
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Bank",
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
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF969696)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Select Bank",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.height / 30,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.arrow_downward,
                            color: Colors.green,
                          ),
                          onPressed: () {})
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Account Number",
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
                      hintText: "Your Account Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Registered Phone Number",
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
                      hintText: "Your Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
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
