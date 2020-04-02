import 'package:flutter/material.dart';

class TabPanel extends StatelessWidget {

  final String title;
  final List<Widget> content;

  const TabPanel(this.title, this.content);

  Widget _createHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
    );
  }

  Widget _createFooter(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(50),
        child:
          const Text('© 2003-2020 Ruben Mondejar | 2 April 2020', textAlign: TextAlign.center)
    );
  }

  @override
  Widget build(BuildContext context) {

      content.insert(0, _createHeader(context));
      content.add(_createFooter(context));
      return ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              child: Column(
                children: content,
              ),
            ),
        ],
      );
  }
}
