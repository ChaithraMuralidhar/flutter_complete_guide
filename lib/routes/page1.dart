import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
// Removing SecondRoute
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}