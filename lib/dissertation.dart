import 'package:flutter/material.dart';

class Dissertation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(40),
            child: Text(
                'Dissertation',
                style: Theme.of(context).textTheme.headline2),
          ),
        ]
    );
  }
}
