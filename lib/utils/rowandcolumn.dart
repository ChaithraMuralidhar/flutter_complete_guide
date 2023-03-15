import 'package:flutter/material.dart';

void main() {
  runApp(rowAndColumn());
}

class rowAndColumn extends StatelessWidget {
  const rowAndColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "row And Column",
      home: Scaffold(
        appBar: AppBar(
          title: Text("row And Column"),
        ),
        body: Row(
          //Coloumn can be used to see in vertical order
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("This "),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("This "),
                Text("is "),
                Text("Column "),
              ],
            ),
            Text("row ")
          ],
        ),
      ),
    );
  }
}
