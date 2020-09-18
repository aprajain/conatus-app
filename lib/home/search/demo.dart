import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoProfile extends StatelessWidget {
  final String name;
  DemoProfile({this.name});

  Widget customRow(IconData icon, title) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 6),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(),
      body: bgTheme(
        SingleChildScrollView(
          child: Column(children: [
            Container(
              //padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 5.0,
                ),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/devs.gif'),
                radius: 60.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'App Development',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 21,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '2nd Year IT',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10),
            Divider(
              color: Colors.grey[400],
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: customRow(Icons.mail, 'Email'),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: customRow(Icons.phone_android, 'Call')),
                      GestureDetector(
                        onTap: () {},
                        child: customRow(
                          FontAwesomeIcons.github,
                          'Github',
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400],
                    height: 30,
                  ),
                  element(
                    elementText(
                        'pursuing Bachelor of Technology from AKGEC  |  Java  |  C#  |  Flutter'),
                  ),
                  element(elementText('Active Projects                  3')),
                  element(elementText('Projects Completed          5')),
                  element(elementText(
                      'For more information on projects visit Github')),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
