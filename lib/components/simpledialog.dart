import 'package:flutter/material.dart';
import 'package:flutter_task/components/alertdialog.dart';

void main(){
  runApp(simpleDialog());
}

class simpleDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('simpleDialog'),
        ),
        body: myLayout(),
      ),
    );
  }
}

class myLayout extends StatelessWidget {
  const myLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          method1(context);
        }, child: Text(
        "Activate Simple Dialog"
      ),
      ),
    );
  }
}


method1(BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(
          title: Text("Choose From one"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("Yes"),
              onPressed: (){
                print("yes");
              },
            ),
            SimpleDialogOption(
              child: Text("no"),
              onPressed: (){
                print("no");
              },
            )
          ],
        );
      });
}
