import 'package:flutter/material.dart';
import 'package:tweet_webview/tweet_webview.dart';

void main() {
  runApp(MyApp());
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

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {},
            child: Text("Home Page"),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
          FlatButton(
            textColor: Colors.white,
            onPressed: () {},
            child: Text("Profile"),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
          FlatButton(
            textColor: Colors.white,
            onPressed: () {},
            child: Text("Dissertation"),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),

        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(100),
              child: Text(
                  'Home Page',
                  style: Theme.of(context).textTheme.headline2),
            ),
            Row(
             children: <Widget>[
               Column(
                 children: [
                   Container(
                     padding: EdgeInsets.all(10),
                     child: Text('Dr. Rubén Mondéjar', textAlign: TextAlign.left)
                    ),
                   Container(
                       padding: EdgeInsets.all(10),
                       child: Text('PhD in Computer Engineering', textAlign: TextAlign.left)
                   ),
                   Container(
                       padding: EdgeInsets.all(10),
                       child: Text('ruben.mondejar.andreu@gmail.com', textAlign: TextAlign.left)
                   ),
                 ]),
               Column(
                 children: <Widget>[
                   Container(
                     height: 300,
                     child: Image.asset(
                       'assets/images/photo.png',
                       fit: BoxFit.scaleDown,
                     ),
                   )
                 ],
               ),
             ],
            ),
            Row(
              children: <Widget>[
                Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Text('About Me', textAlign: TextAlign.left)
                      ),
//                   Container(
//                       padding: EdgeInsets.all(10),
//                       child: Text('I am currently working at AUTO1 Group GmbH as a Team Lead Software Engineer, '
//                           'on microservices architectures and cloud computing.I previously worked at MBition GmbH '
//                           'as a Senior Software Engineer mainly focused on backend cloud services for mobile apps. '
//                           'Before that, I worked at Tarragona Provincial Council (local government) with a permanent '
//                           'position, as a Lead Software Engineer, building web software architectures and a distributed '
//                           'BPM platform for process automation.I also worked as a part-time instructor and research '
//                           'collaborator at the Universitat Rovira i Virgili and Universitat Oberta de Catalunya mainly '
//                           'in courses of Software Architectures and Distributed Systems. In addition, as a member of '
//                           'the Architecture and Telematic Services research group, I published more than 30 papers in '
//                           'software engineering and distributed architectures subjects.', textAlign: TextAlign.left)
//                   ),
                    ]),
                Column(
                  children: <Widget>[
                    Container(
                      height: 300,
                      //child:
                        //TweetWebView.tweetUrl("https://twitter.com/Ruuben4"),
                        //TweetWebView.tweetID('1243922523605086209')
                      ),
                    ]
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
            padding: EdgeInsets.all(20),
            child: Text('© 2003-2020 Ruben Mondejar | Last modified on: 1 March 2020', textAlign: TextAlign.center)
        ),
      ),
    );
  }
}
