import 'package:flutter/material.dart';

void main() {
  runApp(listView());
}

class listView extends StatefulWidget {
  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Widget"),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("item 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("item 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("item 3"),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
