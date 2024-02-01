import 'package:codia_demo_flutter/component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff581845),
        unselectedItemColor: const Color(0xff888888),
        showUnselectedLabels: true,
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
      backgroundColor: const Color(0xff581845),
      appBar: AppBar(
        backgroundColor: const Color(0xff581845),
        title: const Text(
          'NEW TRANSACTION',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 20,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.shopping_cart_checkout,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            color: Color(0xffF5F5F5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                  leading: Icon(Icons.search, color: Color(0xff888888)),
                  trailing:
                      Icon(Icons.qr_code_scanner_outlined, color: Colors.black),
                ),
              ),
              const SizedBox(height: 10),
              ItemContainer(
                  title: 'Laptop Charger',
                  price: 'RWF 1200',
                  widget: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff581845),
                    ),
                    child: const Center(
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  color: Colors.green,
                  text: '111'),
              const SizedBox(height: 10),
              const ItemContainer(
                  title: 'Phone Charger',
                  price: 'RWF 1000',
                  widget: Text(
                    'Already added',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                  color: Color(0xffB5B800),
                  text: '4'),
              const SizedBox(height: 10),
              const ItemContainer(
                  title: 'Laptop Charger',
                  price: 'RWF 1200',
                  widget: Text(
                    'Out of stock',
                    style: TextStyle(
                        color: Color(0xffE74C3C),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                  color: Color(0xffE74C3C),
                  text: '0'),
              const SizedBox(height: 10),
              ItemContainer(
                  title: 'Laptop Charger',
                  price: 'RWF 1200',
                  widget: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff581845),
                    ),
                    child: const Center(
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  color: Colors.green,
                  text: '111'),
            ],
          ),
        ),
      ),
    );
  }
}
