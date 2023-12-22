import 'package:flutter/material.dart';
import 'package:task/views/agriculturepage.dart';
import 'package:task/views/home_page.dart';
import 'package:task/views/shop.dart';
import 'package:task/views/subscription.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int homeBottomNavBarIndex = 0;
List<Widget> _livePage = const [
  HomePage(),
  Subscription(),
  Agriculture(),
  Shop(),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _livePage[homeBottomNavBarIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: homeBottomNavBarIndex,
          selectedIconTheme:
              IconThemeData(color: Color.fromARGB(255, 7, 249, 20)),
          onTap: (index) {
            setState(() {
              homeBottomNavBarIndex = index;
            });
          },
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 11, 170, 0),
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 11, 170, 0),
              icon: Icon(Icons.subscriptions),
              label: 'Subscriptions',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 11, 170, 0),
              icon: Icon(Icons.agriculture),
              label: 'Agriculture',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 11, 170, 0),
              icon: Icon(Icons.shop),
              label: 'Shop',
            ),
          ]),
    );
  }
}




