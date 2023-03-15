import 'package:flutter/material.dart';

void main(){
  runApp(checkBox());
}

class checkBox extends StatefulWidget {

  @override
  State<checkBox> createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {

  bool abool= false;
  bool bbool= false;

late bool cb;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "checkBox",
      home: Scaffold(
        appBar: AppBar(
          title: Text("checkBox"),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children:<Widget>[
            Checkbox(
              value: abool,
              onChanged: (cb) {
                setState(() {
                  abool= cb as bool;
                  print(abool);
                });
              },
            ),
            Checkbox(
              value: bbool,
              onChanged: (cb) {
                setState(() {
                  bbool= cb as bool;
                  print(bbool);
                });
              },
            ),
          ]
        ),
      ),
    );
  }
}
