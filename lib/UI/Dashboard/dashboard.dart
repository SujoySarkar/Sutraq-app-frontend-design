import 'package:flutter/material.dart';
import 'package:sutraq/UI/BottomNavPages/cards.dart';
import 'package:sutraq/UI/BottomNavPages/dashboardpage.dart';
import 'package:sutraq/UI/BottomNavPages/settings.dart';
import 'package:sutraq/UI/BottomNavPages/wallet.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentindex=0;
  final _pages = [
    DashboardPage(),
    Wallet(),
    Cards(),
    Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black54,

        onTap: (index){
          setState(() {
            _currentindex=index;
          });
        },

        currentIndex: _currentindex,
          items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          title: Text("Dashboard"),
        ),


        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet),
          title: Text("Wallet"),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          title: Text("Cards"),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text("Settings"),
        ),
      ]),
      body: _pages[_currentindex],
    );
  }
}
