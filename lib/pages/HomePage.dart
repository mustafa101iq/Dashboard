import 'package:dashboard_app/pages/AccountsPage.dart';
import 'package:dashboard_app/pages/DashboardPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0 ;
  List<Widget> pages = [
    DashboardPage(),
    AccountsPage(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: currentIndex ,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
          new BottomNavigationBarItem(icon: Icon(Icons.credit_card_sharp), label: "Accounts"),
          new BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label:"Alerts"),
        ],
        onTap: (int index){
          setState(() {
            currentIndex = index ;
          });
        },
      ),
    );
  }
}
