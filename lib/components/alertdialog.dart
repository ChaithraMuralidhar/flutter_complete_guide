import 'package:flutter/material.dart';


void main(){
  runApp(alertDialog());
}

class alertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter'),
          ),
          body: MyLayout()),
    );
  }
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          child: Text('Show alert'),
          onPressed: () {
            method1(context);
          },
        ),
      ),
    );
  }
}

method1(BuildContext context) {


  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Warning"),
        content: Text("This is my message."),
        actions: [
          IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close))
        ],
      );
    },
  );
}