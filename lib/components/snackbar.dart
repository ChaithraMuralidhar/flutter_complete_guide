import 'package:flutter/material.dart';

void main(){
  runApp(snackBar());
}

class snackBar extends StatefulWidget {
  const snackBar({Key? key}) : super(key: key);

  @override
  State<snackBar> createState() => _snackBarState();
}

class _snackBarState extends State<snackBar> {

  final GlobalKey<ScaffoldState> _skey= GlobalKey<ScaffoldState>();
void method1(){
  _skey.currentState?.showSnackBar(SnackBar(content: Text("Activated")));
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Snack Bar"),),
      key: _skey,
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              method1();
            }, child: Text("Activate snack bar"),
          ),
        ),
      ),
    );
  }
}
