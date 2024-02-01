import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff581845),
        title: Text(
          'NEW TRANSACTION',
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 20,
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(
              Icons.shopping_cart_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
