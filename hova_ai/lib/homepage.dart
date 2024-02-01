import 'package:codia_demo_flutter/comfirmtranction.dart';
import 'package:codia_demo_flutter/home.dart';
import 'package:codia_demo_flutter/inventory.dart';
import 'package:codia_demo_flutter/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final screens = [
    const Home(),
    const ComfirmTransaction(),
    const Inventory(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: const Color(0xff581845),
          indicatorColor: Colors.white,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          iconTheme: MaterialStateProperty.all(
            const IconThemeData(
              color: Colors.white,
            ),
          ),
        ),
        child: BottomNavigationBar(
          selectedItemColor: const Color(0xff581845),
          unselectedItemColor: const Color(0xff888888),
          showUnselectedLabels: true,
          currentIndex: index,
          onTap: (index) => setState(() => this.index = index),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'transactions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: 'Inventory',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: screens[index],
    );
  }
}
