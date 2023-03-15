import 'package:flutter/material.dart';

void main(){
  runApp(appBar());
}

class appBar extends StatefulWidget {

  @override
  State<appBar> createState() => _appBarState();
}

class _appBarState extends State<appBar> {

  String mtext = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("AppBar Widget"),
          leading: Icon(Icons.menu),
          // centerTitle: true,
          elevation: 30,
          // titleSpacing: 60, //margin
          toolbarOpacity: 0.7,
          actions: <Widget>[
            IconButton(onPressed:(){setState(() {
              mtext = "This is Arrow Button";
            });} , icon: Icon(Icons.arrow_forward)),
            IconButton(onPressed: (){setState(() {
              mtext = "This is close Button";
            });}, icon: Icon(Icons.close)),
          ],
        ),
        body: Center(
          child: Text(mtext),
        ),
      ),
    );
  }
}
