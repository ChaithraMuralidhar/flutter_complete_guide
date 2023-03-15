import 'package:flutter/material.dart';

void main() {
  runApp(textField());
}

class textField extends StatefulWidget {
  @override
  State<textField> createState() => _textFieldState();
}

class _textFieldState extends State<textField> {
  String ptext = "";
  String data = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DUmmy Application",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Application"),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              onChanged: (String txt) {
                setState(() {
                  ptext = txt;
                });
              },
              onSubmitted: (String val) {
                setState(() {
                  data = val;
                });
              },
              decoration: InputDecoration(
                hintText: "Type Something",
                labelText: "FullName",
              ),
            ),
            Container(
              child: Text("on change text is : $ptext"),
              margin: EdgeInsets.only(left: 0, top: 50, right: 0, bottom: 50),
            ),
            Text("on submitted text is : $data")
          ],
        ),
      ),
    );
  }
}
