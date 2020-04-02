import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher_web/url_launcher_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'tabs/homepage.dart';
import 'tabs/profile.dart';
import 'tabs/dissertation.dart';

void main() {
  runApp(MyApp());
}

void registerPlugins(PluginRegistry registry) {
  UrlLauncherPlugin.registerWith(registry.registrarFor(UrlLauncherPlugin));
  registry.registerMessageHandler();
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ruben Mondejar, PhD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Ruben Mondejar, PhD'),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'hello',
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.list)),
                  Tab(icon: Icon(Icons.book)),
                ],
              ),
              title: Text(title),
            ),
            body: TabBarView(
              children: [
                HomePage(),
                Profile(),
                Dissertation(),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text('© 2003-2020 Ruben Mondejar | Last modified on: 1 March 2020', textAlign: TextAlign.center)
              ),
            ),
          ),
        ),



    );
  }
}
