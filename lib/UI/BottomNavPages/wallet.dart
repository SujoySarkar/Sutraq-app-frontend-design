import 'package:flutter/material.dart';
import 'package:sutraq/UI/process/Sendmoney.dart';
import 'package:sutraq/UI/process/fundwallet.dart';
import 'package:sutraq/UI/process/withdrawfunds.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
      ),
      backgroundColor: Color(0xFFF1F3F4),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height/45,
            ),

            Text(
              "My Wallet",
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
                    height: MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.height/3,
                    decoration: BoxDecoration(
                        color: Color(0xFF08083D),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "NGN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).size.height/45),
                              ),
                              Icon(Icons.remove_red_eye,color: Colors.black,)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "AVAILABLE BALANCE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.height/60),
                              ),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "N190,000",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).size.height/20),
                              ),
                              Icon(Icons.arrow_forward,color: Colors.green,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height/45,
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.height/3,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "SUTRAQ CURRENCY",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).size.height/45),
                              ),
                              Icon(Icons.remove_red_eye,color: Colors.black,)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "AVAILABLE BALANCE",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: MediaQuery.of(context).size.height/60),
                              ),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "QO",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).size.height/20),
                              ),
                              Icon(Icons.arrow_forward,color: Colors.green,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/45,
            ),
            Expanded(
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height / 4.5,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    child: CircleAvatar(
                                      radius:
                                          MediaQuery.of(context).size.height /
                                              25,
                                      backgroundColor: Color(
                                        0xFF051F0E,
                                      ),
                                      child: Icon(
                                        Icons.account_balance_wallet,
                                        color: Colors.white,
                                        size:
                                            MediaQuery.of(context).size.height /
                                                30,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FundWallet()));
                                    },
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/45,
                                  ),
                                  Text(
                                    "Fund Wallet",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                45),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    child: CircleAvatar(
                                      radius:
                                          MediaQuery.of(context).size.height /
                                              25,
                                      backgroundColor: Color(
                                        0xFF051F0E,
                                      ),
                                      child: Icon(
                                        Icons.subdirectory_arrow_right,
                                        color: Colors.white,
                                        size:
                                            MediaQuery.of(context).size.height /
                                                30,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SendMoneyy()));
                                    },
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/40,
                                  ),
                                  Text(
                                    "Send Money",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                45),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    child: CircleAvatar(
                                      radius:
                                          MediaQuery.of(context).size.height /
                                              25,
                                      backgroundColor: Color(
                                        0xFF051F0E,
                                      ),
                                      child: Icon(
                                        Icons.subdirectory_arrow_left,
                                        color: Colors.white,
                                        size:
                                            MediaQuery.of(context).size.height /
                                                30,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WithdrawFunds()));
                                    },
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/40,
                                  ),
                                  Text(
                                    "Withdraw",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                45),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Recent Transaction",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.height / 36,
                                color: Colors.black),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Access Bank",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("28, Jan 2020"),
                          leading: CircleAvatar(
                            backgroundColor: Color(0xFFCBEEEA),
                            child: Center(
                              child: Icon(
                                Icons.call_received,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          trailing: Text(
                            "190,000",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
