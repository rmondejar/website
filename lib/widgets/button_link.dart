import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonLink extends StatelessWidget {

  final String imageName;
  final String linkUrl;

  const ButtonLink({this.imageName, this.linkUrl});

  _onSelectButton() async {
    if (await canLaunch(linkUrl)) {
      await launch(linkUrl);
    } else {
      throw 'Could not launch $linkUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _onSelectButton,
        child: Image.asset(
          'assets/images/$imageName',
          fit: BoxFit.scaleDown,
        )
    );
  }

}