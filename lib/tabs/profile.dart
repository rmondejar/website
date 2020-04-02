import 'package:flutter/material.dart';

import '../widgets/paragraph.dart';
import '../widgets/button_link.dart';

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
          Container(
            constraints: BoxConstraints(minWidth: 300, maxWidth: 800),
            padding: EdgeInsets.all(40),
            child:
              Column(
                children: <Widget>[
                  ButtonLink(
                    imageName: 'linkedin.jpg',
                    linkUrl: 'https://www.linkedin.com/in/rubenmondejar',
                  ),

                ],
            )
          ),
          Paragraph(
              title: 'Education',
              content:
                'In April 2010, I received with honors my Ph. D. degree in Computer Engineering at Universitat Rovira i Virgili '
                'in the Department of Computer Science and Mathematics under the supervision of Dr. Pedro García-López, and Dr. Carles Pairot.'
                '\n\n'
                'Master Degree in Computer Science Engineering and Security (June 2007), Universitat Rovira i Virgili.'
                '\n\n'
                'M. Sc. in Computer Engineering (June 2005), Universitat Rovira i Virgili.'
                '\n\n'
                'B. Sc. in Computer Engineering - Hardware Speciality (June 2003), Universitat Rovira i Virgili.'
          ),
          Container(
              constraints: BoxConstraints(minWidth: 300, maxWidth: 800),
              padding: EdgeInsets.all(40),
              child:
              Column(
                children: <Widget>[
                  ButtonLink(
                    imageName: 'gscholar.png',
                    linkUrl: 'https://scholar.google.com/citations?hl=es&user=NKohlloAAAAJ&sortby=pubdate&view_op=list_works&pagesize=100',
                  ),
                ],
              )
          ),
          Paragraph(
              title: 'Research Stage',
              content:
              'I collaborated with the ECOO Team at LORIA, affiliated to INRIA during a stage of 4 months in Nancy (France), from March to July 2008.'
                  '\n\n'
                  'I helped on the validation of Wooki project over the Grid\'5000 platform, and the design and implementation of the UniWiki project, under the supervision of Dr. Pascal Molli, and Dr. Pascal Urso.'
          ),
      ]
    );
  }
}
