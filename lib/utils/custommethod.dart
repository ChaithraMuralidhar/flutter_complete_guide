import 'package:flutter/material.dart';

void main() {
  runApp(customMethodWidget());
}

class customMethodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.pink,
          child: Container(
            color: Colors.yellow,
            margin: EdgeInsets.all(15),
            child: Container(
              color: Colors.green,
              margin: EdgeInsets.all(15),
              child: Container(
                color: Colors.blue,
                margin: EdgeInsets.all(15),
                child: Container(
                  color: Colors.orange,
                  margin: EdgeInsets.all(15),
                  child: _methodCustom(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _methodCustom() {
  return Container(
    color: Colors.purple,
    margin: EdgeInsets.all(15),
    child: Container(
      color: Colors.white,
      margin: EdgeInsets.all(15),
    ),
  );
}
