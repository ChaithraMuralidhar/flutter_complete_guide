import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';


void main() => runApp(const routing());

class routing extends StatelessWidget {
  const routing({super.key});

  static const appTitle = 'Routing Demo';

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
        child: Text('Main Page!'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
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
              title: Text('Page 1'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
            ),
             ListTile(
              title: Text('Page 2'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
            ),
            ListTile(
              title: const Text('Close'),
              trailing: const Icon(Icons.close),

              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}