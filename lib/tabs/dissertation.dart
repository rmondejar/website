import 'package:flutter/material.dart';

import '../widgets/paragraph.dart';
import '../widgets/text_link.dart';
import '../widgets/tab_panel.dart';

class Dissertation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return TabPanel('Dissertation', <Widget>[
      Text('Subject', style: Theme.of(context).textTheme.headline5),
      Container(
        padding: EdgeInsets.all(20),
        child:
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText1,
                    text:
                        'Distributed AOP Middleware for Large-Scale Scenarios '
                ),
              ),
              Container(
                  constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                  padding: EdgeInsets.fromLTRB(90,10,90,10),
                child:
                  Row( children: <Widget>[
                    TextLink(
                        text: '[TDX]',
                        linkUrl: 'https://www.tdx.cat/handle/10803/8486#page=1',
                        scale: 1.4,
                    ),
                    const Text(' '),
                    TextLink(
                        text: '[PDF]',
                        linkUrl: 'https://www.tdx.cat/bitstream/handle/10803/8486/thesis.pdf?sequence=1',
                        scale: 1.4,
                    ),
                  ],
                  )
              )
          ],
        ),
      ),
      Paragraph(
          title: 'Abstract',
          content:
              'In this PhD dissertation we present a distributed middleware proposal '
              'for large-scale application development. Our main aim is to separate the '
              'distributed concerns of these applications, like replication, which can be '
              'integrated independently and transparently.'
              '\n\n'
              'Our approach is based on the implementation '
              'of these concerns using the paradigm of distributed aspects. In addition, our proposal benefits '
              'from the peer-to-peer (P2P) networks and aspect-oriented programming (AOP) substrates '
              'to provide these concerns in a decentralized, decoupled, efficient, and transparent way.'
              '\n\n'
              'Our middleware architecture is divided into two layers: a composition model and a scalable '
              'deployment platform for distributed aspects. Finally, we demonstrate the viability and '
              'applicability of our model via implementation and experimentation of prototypes in real '
              'large-scale networks.'),
      Paragraph(
        title: 'Date',
        content: 'Thursday, 29th April 2010',
      ),
      Paragraph(
        title: 'Supervisors',
        content: 'Dr. Pedro García-López and Dr. Carles Pairot',
      ),
    ]);
  }
}
