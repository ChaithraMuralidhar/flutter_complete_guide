import 'package:flutter/material.dart';

void main(){
  runApp(radioButton());
}

class radioButton extends StatefulWidget {
  const radioButton({Key? key}) : super(key: key);

  @override
  State<radioButton> createState() => _radioButtonState();
}

class _radioButtonState extends State<radioButton> {
  int rvalue = 0;

  void method1(val){
    setState(() {
      rvalue=val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "radioButton",
      home: Scaffold(
        appBar: AppBar(
          title: Text("radioButton"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(value: 1, groupValue: rvalue, onChanged: (rval){
                method1(rval);
              }),
              Radio(value: 2, groupValue: rvalue, onChanged: (rval){
                method1(rval);
              }),
              Radio(value: 3, groupValue: rvalue, onChanged: (rval){
                method1(rval);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
