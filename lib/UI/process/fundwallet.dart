import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sutraq/UI/BottomNavPages/wallet.dart';
import 'package:sutraq/UI/Dashboard/dashboard.dart';
class FundWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9ECEC),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height / 38,),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
                  },
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
                "Fund Wallet",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height / 27,
                    color: Colors.black),
              ),
              Text(
                "Ensure to fill in the neccessary",
                style: TextStyle(fontSize: MediaQuery.of(context).size.height / 45, color: Colors.black38),
              ),
              Text(
                "details of the recipient in order to",
                style: TextStyle(fontSize: MediaQuery.of(context).size.height / 45, color: Colors.black38),
              ),
              Text(
                "continue",
                style: TextStyle(fontSize: MediaQuery.of(context).size.height / 45, color: Colors.black38),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 8,),
             Stack(
               alignment: Alignment.topCenter,
               overflow: Overflow.visible,
               children: <Widget>[
                 Container(
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(20))
                   ),

                   child: Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Column(
                       children: <Widget>[

                         SizedBox(height: MediaQuery.of(context).size.height / 12,),
                         Align(
                           alignment: Alignment.topLeft,
                           child: Text(
                             "Amount",
                             style: TextStyle(fontSize: MediaQuery.of(context).size.height / 40, color: Colors.black38),
                           ),
                         ),
                         SizedBox(
                           height: 5,
                         ),
                         Container(
                           height: MediaQuery.of(context).size.height / 12,
                           width: MediaQuery.of(context).size.height / 2,
                           child: TextField(
                             keyboardType: TextInputType.number,
                             style: TextStyle(fontSize: MediaQuery.of(context).size.height / 30, fontWeight: FontWeight.bold),
                             decoration: InputDecoration(
                                 prefixIcon: Padding(
                                   padding: const EdgeInsets.all(10.0),
                                   child: Text(
                                     "N",
                                     style: TextStyle(
                                         color: Colors.green,
                                         fontWeight: FontWeight.bold,
                                         fontSize: MediaQuery.of(context).size.height / 30),
                                   ),
                                 ),
                                 hintStyle: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.bold,
                                     fontSize: MediaQuery.of(context).size.height / 30),
                                 hintText: "Enter Amount",
                                 border: OutlineInputBorder(
                                     borderRadius: BorderRadius.all(Radius.circular(8)))),
                           ),
                         ),
                         Align(
                           alignment: Alignment.topLeft,
                           child: Text(
                             "Payment Ontion",
                             style: TextStyle(color: Color(0xFF969696), fontSize: MediaQuery.of(context).size.height / 40),
                           ),
                         ),
                         SizedBox(
                           height: 4,
                         ),
                         Container(
                           height: MediaQuery.of(context).size.height / 12,
                           width: MediaQuery.of(context).size.height / 2,
                           decoration:
                           BoxDecoration(border: Border.all(color: Color(0xFF969696)),borderRadius: BorderRadius.all(Radius.circular(10))),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[
                                 Text(
                                   "Bank Account",
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
                         Align(
                           alignment: Alignment.topLeft,
                           child: Text(
                             "Select Account",
                             style: TextStyle(color: Color(0xFF969696), fontSize: MediaQuery.of(context).size.height / 40),
                           ),
                         ),
                         SizedBox(
                           height: 4,
                         ),
                         Container(
                           height: MediaQuery.of(context).size.height / 12,
                           width: MediaQuery.of(context).size.height / 2,
                           decoration:
                           BoxDecoration(border: Border.all(color: Color(0xFF969696)),borderRadius: BorderRadius.all(Radius.circular(10))),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[
                                 Text(
                                   "938103802",
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
                         SizedBox(height: MediaQuery.of(context).size.height / 30,),
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

                                   },
                                   splashColor: Colors.red,
                                   child: Center(
                                     child: Text(
                                       "Proceed",
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
                 Positioned(
                   top: -70,
                     child: Container(
                   height: MediaQuery.of(context).size.height / 5,
                   width: MediaQuery.of(context).size.height / 2.8,
                   decoration: BoxDecoration(
                       color: Color(0xFF08083D),
                     borderRadius: BorderRadius.all(Radius.circular(20))
                   ),
                 ))
               ],
             )


            ],
          ),
        ),
      ),
    );
  }
}
