import 'package:flutter/material.dart';

import '../widgets/paragraph.dart';
import '../widgets/text_link.dart';
import '../widgets/tab_panel.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return TabPanel('Home Page', <Widget>[
            Column(
             children: <Widget>[
               Column(
                 children: <Widget>[
                   Container(
                     height: 300,
                     padding: EdgeInsets.all(15),
                     child: Image.asset(
                       'assets/images/photo.png',
                       fit: BoxFit.scaleDown,
                     ),
                   )
                 ],
               ),
               Column(
                 children: [
                   Container(
                     padding: EdgeInsets.all(5),
                     child: Text('Dr. Rubén Mondéjar', textAlign: TextAlign.right,  style: TextStyle(fontWeight: FontWeight.bold))
                    ),
                   Container(
                       padding: EdgeInsets.all(5),
                       child: Text('PhD in Computer Engineering', textAlign: TextAlign.left)
                   ),
                   Container(
                       padding: EdgeInsets.all(5),
                       child: TextLink(
                           text: 'ruben.mondejar.andreu at gmail.com',
                           linkUrl: 'mailto:ruben.mondejar.andreu@gmail.com'
                       )
                   ),
                   Container(
                       padding: EdgeInsets.fromLTRB(5,5,5,20),
                       child: TextLink(
                           text: 'Twitter: @Ruuben4',
                           linkUrl: 'https://twitter.com/ruuben4'
                       )
                   ),
                 ]),

               Paragraph(
                   title: 'About Me',
                   content: 'I am currently working at AUTO1 Group GmbH in Berlin as a Team Lead Software Engineer, '
                       'with microservices architectures and cloud computing. I previously worked at MBition GmbH '
                       'as a Senior Software Engineer mainly focused on backend cloud services for mobile apps.'
                       '\n\n'
                       'Before that, I worked at Tarragona Provincial Council (local government) with a permanent '
                       'position, as a Lead Software Engineer, building web software architectures and a distributed '
                       'BPM platform for process automation.'
                       '\n\n'
                       'I also worked as a part-time instructor and research '
                       'collaborator at the Universitat Rovira i Virgili and Universitat Oberta de Catalunya mainly '
                       'in courses of Software Architectures and Distributed Systems. In addition, as a member of '
                       'the Architecture and Telematic Services research group, I published more than 30 papers in '
                       'software engineering and distributed architectures subjects.'
               ),
          ],
      ),
    ]);
  }
}
