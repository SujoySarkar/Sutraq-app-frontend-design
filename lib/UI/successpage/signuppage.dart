import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sutraq/UI/successpage/tipthree.dart';

class SignUppage extends StatefulWidget {
  @override
  _SignUppageState createState() => _SignUppageState();
}

class _SignUppageState extends State<SignUppage> {
  var email;
  var password;

  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<FirebaseUser> handleSignUp(email, password) async {
    AuthResult result = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    final FirebaseUser user = result.user;

    assert(user != null);
    assert(await user.getIdToken() != null);

    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.height / 12,
                child: Image.asset("images/splashicon.png"),
              ),
              Text(
                "Create your Sutraq account &",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height / 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "start transacting!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height / 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Enter your details to begin",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: MediaQuery.of(context).size.height / 45,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "I’m opening this account for",
                  style: TextStyle(
                      color: Color(0xFF969696),
                      fontSize: MediaQuery.of(context).size.height / 45),
                ),
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
                      IconButton(
                          icon: Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                          onPressed: () {}),
                      Text(
                        "Personal use",
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
                          onPressed: () {})
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "First Name",
                  style: TextStyle(
                      color: Color(0xFF969696),
                      fontSize: MediaQuery.of(context).size.height / 45),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.height / 2,
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 30,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 35),
                      hintText: "Umar",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Last Name",
                  style: TextStyle(
                      color: Color(0xFF969696),
                      fontSize: MediaQuery.of(context).size.height / 45),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.height / 2,
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 30,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 35),
                      hintText: "Murtala",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email Adress",
                  style: TextStyle(
                      color: Color(0xFF969696),
                      fontSize: MediaQuery.of(context).size.height / 45),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              // email
              Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.height / 2,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 30,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.green,
                      ),
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 35),
                      hintText: "presh@mail.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Create Password",
                  style: TextStyle(
                      color: Color(0xFF969696),
                      fontSize: MediaQuery.of(context).size.height / 45),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              // password
              Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.height / 2,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 30,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.green,
                      ),
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 35),
                      hintText: "***********",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
              ),
              Text(
                "Password must have at least 8 letters, a number, capital letter.",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: MediaQuery.of(context).size.height / 40,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Country of Residence",
                  style: TextStyle(
                      color: Color(0xFF969696),
                      fontSize: MediaQuery.of(context).size.height / 45),
                ),
              ),
              SizedBox(
                height: 4,
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
                      IconButton(
                          icon: Icon(
                            Icons.add_location,
                            color: Colors.green,
                          ),
                          onPressed: () {}),
                      Text(
                        "Nigeria",
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
                          onPressed: () {})
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
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
                          handleSignUp(email, password);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TipPage()));
                        },
                        splashColor: Colors.red,
                        child: Center(
                          child: Text(
                            "Register",
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
