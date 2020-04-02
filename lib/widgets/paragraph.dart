import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {

  final String title;
  final String content;

  const Paragraph({this.title, this.content});

  @override
  Widget build(BuildContext context) {
      return Container(
        constraints: BoxConstraints(minWidth: 300, maxWidth: 600),
        padding: EdgeInsets.fromLTRB(50,20,50,20),
        child:
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline5
            ),
            const Text(''),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText1,
                text: content
              ),
            ),
          ],
        ),
      );
  }

}