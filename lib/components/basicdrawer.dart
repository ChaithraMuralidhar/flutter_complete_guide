import 'package:flutter/material.dart';

void main() => runApp(const basicDrawer());

class basicDrawer extends StatelessWidget {
  const basicDrawer({super.key});

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),backgroundColor: Colors.cyan,),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Chaithra Muralidhar"),
            accountEmail: Text("chaithra@gmail.com"),
otherAccountsPictures: <Widget>[
  CircleAvatar(
    backgroundColor: Colors.black26,
    child: Text("V"),
  ) ,
  CircleAvatar(
    backgroundColor: Colors.black26,
    child: Text("K"),
  ) ,
],
currentAccountPicture:CircleAvatar(
  backgroundColor: Colors.black26,
  child: Text("C"),
) ,
            decoration: BoxDecoration(
              color: Colors.orange
            ),
            ),
            ListTile(
              title: const Text('Item 1'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: const Text('Item 2'),
              trailing: Icon(Icons.arrow_forward),

            ),
            ListTile(
              title: const Text('Close'),
              trailing: Icon(Icons.close),

              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}