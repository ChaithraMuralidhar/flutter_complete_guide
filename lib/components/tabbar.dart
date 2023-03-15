import 'package:flutter/material.dart';

void main(){
  runApp(tabBar());
}

class tabBar extends StatefulWidget {

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> with SingleTickerProviderStateMixin {

  late TabController _tcontrol ;

  @override
  void initState() {
_tcontrol = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("TabBar "),
bottom: TabBar(
  tabs: <Widget>[
  Tab(
    icon: Icon(Icons.home),
  ),
    Tab(
      icon: Icon(Icons.supervisor_account),
    ),
    Tab(
      icon: Icon(Icons.help),
    )
],
controller: _tcontrol,
),
        ),
        body: TabBarView(
          controller: _tcontrol,
          children:<Widget> [
            Center(
              child: Text(
                "Welcome to Home"
              ),
            ),
            Center(
              child: Text(
                  "Welcome to User Account"
              ),
            ),
            Center(
              child: Text(
                  "Help"
              ),
            )
          ],

        ),
        bottomNavigationBar: Material(
          color: Colors.cyan,
          child: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.supervisor_account),
              ),
              Tab(
                icon: Icon(Icons.help),
              )
            ],
            controller: _tcontrol,
          ),
        ),
      ),
    );
  }
}
