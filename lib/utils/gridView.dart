import 'package:flutter/material.dart';

void main() {
  runApp(gridView());
}

class gridView extends StatefulWidget {
  const gridView({Key? key}) : super(key: key);

  @override
  State<gridView> createState() => _gridViewState();
}

class _gridViewState extends State<gridView> {
  List<int> _items = [];

  @override
  void initState() {
    for (int i = 0; i < 80; i++) {
      _items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('grid View'),
        ),
        body: GridView.builder(
            itemCount: _items.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.all(20),
                ),
              );
            }),
      ),
    );
  }
}
