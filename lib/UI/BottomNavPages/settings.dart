import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08083D),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height / 28,),
                  Text(
                    "Account Settings",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height / 30,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(

                        children: <Widget>[
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.height / 28,
                            backgroundColor: Colors.pink,
                            child: Center(child:  Text("UM",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.height / 30,),
                          Column(
                            children: <Widget>[
                              Text("Umar Murtala         ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height / 30),),
                              Text("umarmurtala@gmail.com",style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.height / 45),),

                            ],
                          )
                        ],
                      ),

                      Container(
                        height: MediaQuery.of(context).size.height / 30,
                        width: MediaQuery.of(context).size.height / 30,
                        child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                      )


                    ],),
                ],
              ),
            ),
          )),
          SizedBox(height: 15,),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),


              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "General",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 35,
                              color: Colors.black54),
                        ),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Bank Accounts",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height / 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(Icons.arrow_forward_ios,color: Colors.black54,),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "My Cards",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height / 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(Icons.arrow_forward_ios,color: Colors.black54,),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Change Transaction Pin",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height / 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(Icons.arrow_forward_ios,color: Colors.black54,),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Security",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height / 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(Icons.arrow_forward_ios,color: Colors.black54,),
                        ],
                      ),
                      Divider(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Preference",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 35,
                              color: Colors.black54),
                        ),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Invite Your Friends",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height / 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(Icons.arrow_forward_ios,color: Colors.black54,),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Report a Bug",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height / 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(Icons.arrow_forward_ios,color: Colors.black54,),
                        ],
                      ),
                      Divider(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Notifications",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 35,
                              color: Colors.black54),
                        ),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Report a Bug",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height / 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Transform.scale(
                            scale: 1.6,
                            child: Switch(
                              activeColor: Colors.white,
                                activeTrackColor: Colors.green,

                                value: _value, onChanged: (value){
                              setState(() {
                                _value=value;
                              });
                            }),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}