import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(40),
            child: Text(
              'Profile',
              style: Theme.of(context).textTheme.headline2),
            ),
      ]
    );
  }
}
