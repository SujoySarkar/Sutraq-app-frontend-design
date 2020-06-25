import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:sutraq/UI/Try_Sutraq/depositfundetwo.dart';
import 'package:sutraq/UI/Try_Sutraq/goodjob.dart';

class DepositFundOne extends StatefulWidget {
  @override
  _DepositFundOneState createState() => _DepositFundOneState();
}

class _DepositFundOneState extends State<DepositFundOne> {
  TextEditingController depositamount = TextEditingController();
  sendData()async{
    final databaseReference = Firestore.instance;
    await databaseReference.collection("UserData")
        .document().collection("DepositAmount").document()
        .setData({
      'DepositAmount': depositamount.text,
    });
  }

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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GoodJob()));
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
              Text(
                "Deposit Funds",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height / 27,
                    color: Colors.black),
              ),
              Text(
                "Enter amount to deposit",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 40,
                    color: Colors.black38),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Amount",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height /40,
                      color: Colors.black38),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: depositamount,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 30,
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "N",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height / 35),
                    hintText: "Enter Amount",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)))),
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

                          sendData();

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DepositFundTwo()));
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
