import 'package:flutter/material.dart';

void main() {
  runApp(containerWidget());
}

class containerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 300,
          width: 300,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(color: Colors.green),
          transform: Matrix4.rotationZ(.5),
          foregroundDecoration: BoxDecoration(color: Colors.yellow),
          child: const Text("This is my Container"),
        ),
      ),
    );
  }
}
