import 'package:flutter/material.dart';
import 'package:sutraq/UI/Try_Sutraq/addbankaccount.dart';
import 'package:sutraq/UI/Try_Sutraq/addbankcard.dart';
import 'package:sutraq/UI/Try_Sutraq/depositfundeone.dart';

class DepositFundTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DepositFundOne()));
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
              "Select your preferred payment method",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 40,
                  color: Colors.black38),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddBank()));
              },
              child: Card(
                child: Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.height / 2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Icon(
                            Icons.account_balance,
                            color: Colors.green,
                            size: MediaQuery.of(context).size.height / 15,
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Bank Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height / 30,
                                    color: Colors.black),
                              ),
                              Text(
                                "Make payments directly from your bank account to your sutraq account",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height / 40,
                                    color: Colors.black38),
                              )
                            ],
                          ),
                        ),
                        flex: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddBankCard()));
              },
              child: Card(
                child: Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.height / 2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Icon(
                            Icons.credit_card,
                            color: Colors.green,
                            size: MediaQuery.of(context).size.height / 15,
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Card Payment",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height / 30,
                                    color: Colors.black),
                              ),
                              Text(
                                "Make payments directly into your accounts from you credit/debit cards",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height / 40,
                                    color: Colors.black38),
                              )
                            ],
                          ),
                        ),
                        flex: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
