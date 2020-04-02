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
    return InkWell(
        onTap: _onSelectButton,
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(1),
        child: Container(
          padding: const EdgeInsets.all(1),
          child: Image.asset(
            'assets/images/$imageName',
            fit: BoxFit.fitWidth,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(1),
          ),
        ));
  }
}
