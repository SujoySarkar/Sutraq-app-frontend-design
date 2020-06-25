import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sutraq/UI/Try_Sutraq/goodjob.dart';

class Addnewaccount extends StatefulWidget {
  @override
  _AddnewaccountState createState() => _AddnewaccountState();
}

class _AddnewaccountState extends State<Addnewaccount> {
  var currency = "Choose Currency";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            Center(
              child: Text(
                "Add New Account",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height / 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Ensure to fill in the neccessary details of the",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height / 45,
                ),
              ),
            ),
            Center(
              child: Text(
                "recipient in order to continue",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height / 45,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Text(
              "Currency",
              style: TextStyle(
                  color: Color(0xFF969696),
                  fontSize: MediaQuery.of(context).size.height / 40),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 12,
              width: MediaQuery.of(context).size.height / 2,
              decoration:
              BoxDecoration(border: Border.all(color: Color(0xFF969696))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      currency,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height / 35,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.arrow_downward,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          DropdownButton(

                            items: [
                              DropdownMenuItem(
                                value: "US Dollar",
                                child: Text("US Dollar"),

                              ),
                              DropdownMenuItem(
                                value: "UAE AED",
                                child: Text("UAE AED"),

                              ),
                              DropdownMenuItem(
                                value: "Naira NGN",
                                child: Text("Naira NGN"),

                              ),
                            ],
                            onChanged: (value) {

                              setState(() {
                                currency = value;
                              });

                            },);

                        })
                  ],
                ),
              ),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => GoodJob()));
                      },
                      splashColor: Colors.red,
                      child: Center(
                        child: Text(
                          "Open Account",
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
    );
  }
}

