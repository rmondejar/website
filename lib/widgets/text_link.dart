import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextLink extends StatelessWidget {

  final String text;
  final String linkUrl;
  final double scale;

  const TextLink({this.text, this.linkUrl, this.scale});

  _onSelectText() async {
    if (await canLaunch(linkUrl)) {
      await launch(linkUrl);
    } else {
      throw 'Could not launch $linkUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _onSelectText,
        child:
          Text(text,
              textAlign: TextAlign.left,
              textScaleFactor: scale,
              style: TextStyle(decoration: TextDecoration.underline)
        ),
    );
  }

}