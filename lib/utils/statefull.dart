import 'package:flutter/material.dart';

void main() {
  runApp(statefullApp());
}

class statefullApp extends StatefulWidget {
  @override
  State<statefullApp> createState() => _statefullAppState();
}

class _statefullAppState extends State<statefullApp> {
  String ttext = "";

  @override
  void initState() {
    ttext = "Click on this Button";
    // TODO: implement initState
    super.initState();
  }

  void pressButton() {
    setState(() {
      ttext = "The text is been changed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Statefull Widget',
        home: Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                pressButton();
              },
              child: Text(ttext),
            ),
          ),
        ));
  }
}
