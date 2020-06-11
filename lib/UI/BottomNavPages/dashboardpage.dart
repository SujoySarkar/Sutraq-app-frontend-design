import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sutraq/UI/process/Sendmoney.dart';
import 'package:sutraq/UI/process/fundwallet.dart';
import 'package:sutraq/UI/process/notifications.dart';
import 'package:sutraq/UI/process/withdrawfunds.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051F0E),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height/32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height/32,
                      backgroundColor: Colors.pink,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height/30,
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height/30),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                child: Container(
                  height: 45,
                  width: 45,
                  child: Icon(
                    Icons.notifications_active,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/5,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
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
                    SizedBox(
                      width: 10,
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
                                  "USD",
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
                                  "\$0",
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
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 4.5,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.height / 18,
                        backgroundColor: Color(
                          0xFF051F0E,
                        ),
                        child: Icon(
                          Icons.account_balance_wallet,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.height/25,

                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FundWallet()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Fund Wallet",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 35),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SendMoneyy()));
                      },
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.height / 18,
                        backgroundColor: Color(
                          0xFF051F0E,
                        ),
                        child: Icon(
                          Icons.subdirectory_arrow_right,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.height/25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Send Money",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 35),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WithdrawFunds()));
                      },
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.height / 18,
                        backgroundColor: Color(
                          0xFF051F0E,
                        ),
                        child: Icon(
                          Icons.subdirectory_arrow_left,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.height/25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Withdraw",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 35),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.green,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Recent Transactions",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height/33),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.height / 10,
                              decoration:
                                  BoxDecoration(color: Color(0xFFF2F6FB)),
                              child: Center(
                                  child: Container(
                                      height: MediaQuery.of(context).size.height/23,
                                      width: MediaQuery.of(context).size.height/23,
                                      child: Image.asset("images/book.png"))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "No Transactions Yet",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: MediaQuery.of(context).size.height/36),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
