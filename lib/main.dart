import 'package:flutter/material.dart';

import 'tabs/homepage.dart';
import 'tabs/profile.dart';
import 'tabs/dissertation.dart';

void main() {
  runApp(Website());
}

class Website extends StatelessWidget {

  final String title = 'Ruben Mondejar, PhD';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabScreen(title),
    );
  }
}

class TabScreen extends StatelessWidget {

  final String title;

  TabScreen(this.title);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text(title),
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.list)),
                  Tab(icon: Icon(Icons.book)),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                HomePage(),
                Profile(),
                Dissertation(),
              ],
            )
          ),
        ),
    );
  }
}
