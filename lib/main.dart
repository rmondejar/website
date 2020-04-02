import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher_web/url_launcher_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'tabs/homepage.dart';
import 'tabs/profile.dart';
import 'tabs/dissertation.dart';

void main() {
  runApp(Website());
}

void registerPlugins(PluginRegistry registry) {
  UrlLauncherPlugin.registerWith(registry.registrarFor(UrlLauncherPlugin));
  registry.registerMessageHandler();
}

class Website extends StatelessWidget {

  final String title = 'Ruben Mondejar, PhD';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
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
            )
          ),
        ),



    );
  }
}
