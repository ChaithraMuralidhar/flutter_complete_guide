import 'package:flutter/material.dart';

void main() {
  runApp(statelessApp());
}

class statelessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateless Widget",
      home: Scaffold(
        body: Container(
          color: Colors.pink,
          child: Container(
            color: Colors.yellow,
            margin: EdgeInsets.all(30),
          ),
        ),
      ),
    );
  }
}
