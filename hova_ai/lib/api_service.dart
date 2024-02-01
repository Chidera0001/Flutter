import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyApiIntegrationWidget extends StatefulWidget {
  @override
  _MyApiIntegrationWidgetState createState() => _MyApiIntegrationWidgetState();
}

class _MyApiIntegrationWidgetState extends State<MyApiIntegrationWidget> {
  List<dynamic> apiData = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromApi();
  }

  Future<void> fetchDataFromApi() async {
    final response = await http.get('');

    if (response.statusCode == 200) {
      setState(() {
        apiData = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Integration Example'),
      ),
      body: ListView.builder(
        itemCount: apiData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(apiData[index]['name']),
            subtitle: Text(apiData[index]['description']),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyApiIntegrationWidget(),
  ));
}
