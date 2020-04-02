import 'package:flutter/material.dart';

class TabPanel extends StatelessWidget {

  final String title;
  final List<Widget> content;

  const TabPanel(this.title, this.content);

  Widget _createHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child:
      Text(
          title,
          style: Theme.of(context).textTheme.headline2
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

      content.insert(0, _createHeader(context));
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
