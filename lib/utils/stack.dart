import 'package:flutter/material.dart';

void main() {
  runApp(stackView());
}

class stackView extends StatefulWidget {
  @override
  State<stackView> createState() => _stackViewState();
}

class _stackViewState extends State<stackView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Card(
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.all(200.0),
              ),
            ),
            Card(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.all(100.0),
              ),
            ),
            Card(
              color: Colors.green,
              child: Padding(
                padding: EdgeInsets.all(50.0),
              ),
            ),
            Card(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(30.0),
              ),
            ),
            Card(
              color: Colors.purple,
              child: Padding(
                padding: EdgeInsets.all(10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
