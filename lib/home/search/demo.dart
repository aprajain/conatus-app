import 'package:conatus/home/profile/customwidgets.dart';
import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoProfile extends StatelessWidget {
  final String name;
  DemoProfile({this.name});

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
            info('Year and Branch'),
            SizedBox(height: 5),
            info('App Development'),
            SizedBox(height: 10),
            divider(),
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
                  divider(),
                  element(
                    elementText(
                        'pursuing Bachelor of Technology from AKGEC  |  Java  |  C#  |  Flutter'),
                  ),
                  element(Row(
                    children: [
                      elementText('Active Projects'),
                      Spacer(),
                      elementText('5')
                    ],
                  )),
                  element(Row(
                    children: [
                      elementText('Projects Completed'),
                      Spacer(),
                      elementText('12'),
                    ],
                  )),
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
