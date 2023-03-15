import 'package:flutter/material.dart';

void main(){
  runApp(buttonWidget());
}

class buttonWidget extends StatefulWidget {

  @override
  State<buttonWidget> createState() => _buttonWidgetState();
}

class _buttonWidgetState extends State<buttonWidget> {

String ptext ="";

void method1(value){
  setState(() {
    ptext=value;
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button"),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(onPressed: (){
              method1("Raised Button pressed");
            },child: Text(
                "Raised Button"
            )
            ),

            FlatButton(onPressed: (){
              method1("You Pressed Flat Button ");
            }, child: Text(
                "Flat Button"
            )),

            ElevatedButton(onPressed: (){
              method1("pressed Elevated Button");
            }, child: Text(
              "Elavated button"
            )),

            AlertDialog(actions: [
              Text(ptext)
            ],)
          ],
        ),
      ),
    );
  }
}
