import 'package:flutter/material.dart';

void main() {
  runApp(arrayList());
}

class arrayList extends StatefulWidget {
  @override
  State<arrayList> createState() => _arrayListState();
}

class _arrayListState extends State<arrayList> {
  List<int> items = [];

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application",
      home: Scaffold(
          appBar: AppBar(
            title: const Text("List Widget"),
          ),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("item no:$index"),
                  trailing: const Icon(Icons.arrow_forward),
                );
              })),
    );
  }
}
