import 'package:flutter/material.dart';

void main(){
  runApp(sliderWidget());
}

class sliderWidget extends StatefulWidget {
  const sliderWidget({Key? key}) : super(key: key);

  @override
  State<sliderWidget> createState() => _sliderWidgetState();
}

class _sliderWidgetState extends State<sliderWidget> {

 double dtext = 2.0;

 void method1(value){
   setState(() {
     dtext=value;
   });
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Slider Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
Slider(
    value: dtext,
    onChanged: (double dval){
      method1(dval);
    },
  min: 1.0,
  max: 10.0,
),
              Text("this is the value: $dtext")
            ],
          ),
        ),
      ),
    );
  }
}
