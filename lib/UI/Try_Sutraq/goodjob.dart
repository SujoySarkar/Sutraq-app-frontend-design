import 'package:flutter/material.dart';
import 'package:sutraq/UI/Try_Sutraq/addbankaccount.dart';
import 'package:sutraq/UI/Try_Sutraq/addnewaccount.dart';
import 'package:sutraq/UI/Try_Sutraq/depositfundeone.dart';

class GoodJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(

          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Addnewaccount()));
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.close,color: Colors.white,),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/5,),
            Text(
              "Good Job!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height / 27,
                  color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Let’s try funding this account",
              style: TextStyle(fontSize: MediaQuery.of(context).size.height / 40, color: Colors.black38),
            ),
            SizedBox(
              height: 20,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DepositFundOne()));
                      },
                      splashColor: Colors.red,
                      child: Center(
                        child: Text(
                          "Confirm",
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
    );
  }
}
