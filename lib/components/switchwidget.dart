import 'package:flutter/material.dart';

void main(){
  runApp(switchWidget());
}

class switchWidget extends StatefulWidget {
  const switchWidget({Key? key}) : super(key: key);

  @override
  State<switchWidget> createState() => _switchWidgetState();
}

class _switchWidgetState extends State<switchWidget> {

  bool sbool = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "switchWidget",
      home: Scaffold(
        body: Center(
          child: Switch(
            onChanged: (sb){
              setState(() {
                sbool=sb;
                print(sbool);
              });
            }, value: sbool,
          ),
        ),
      ),
    );
  }
}
