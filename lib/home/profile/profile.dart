import 'package:conatus/home/profile/dp.dart';
import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../drawer.dart';
import 'editprofile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Future _urllaunch(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
      );
    } else {
      throw 'could not launch $url';
    }
  }

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

  Widget skills(value) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.lightBlue[200],
            radius: 6.0,
          ),
          SizedBox(width: 10),
          Text(
            value,
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget headers(title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      width: double.infinity,
      color: Colors.grey[400],
      child: Text(
        title,
        style: TextStyle(
          color: Colors.blueGrey[800],
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget divider() {
    return Divider(
      height: 50.0,
      color: Colors.lightBlue[200],
      thickness: 2.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.edit,
            ),
            onPressed: () {
              //Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Edit()));
            },
          )
        ],
      ),
      drawer: Menu(),
      body: bgTheme(
        SingleChildScrollView(
          child: Column(children: [
            Exp(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Apra Jain',
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
                color: Colors.grey[300],
                fontSize: 21,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '2nd Year IT',
              style: TextStyle(
                color: Colors.grey[300],
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
                        onTap: () {
                          _urllaunch('mailto: apra.jain01@gmail.com');
                        },
                        child: customRow(Icons.mail, 'Email'),
                      ),
                      GestureDetector(
                          onTap: () {
                            _urllaunch('tel: +918604601091');
                          },
                          child: customRow(Icons.phone_android, 'Call')),
                      GestureDetector(
                        onTap: () {
                          _urllaunch('https://www.github.com/aprajain');
                        },
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
                  element(Row(
                    children: [
                      elementText('Active Projects'),
                      Spacer(),
                      elementText('3')
                    ],
                  )),
                  element(Row(
                    children: [
                      elementText('Projects Completed'),
                      Spacer(),
                      elementText('5'),
                    ],
                  )),
                  element(Row(
                    children: [
                      elementText('For more information visit '),
                      GestureDetector(
                        onTap: () {
                          _urllaunch(
                              'https://github.com/aprajain?tab=repositories');
                        },
                        child: elementText('Github.'),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
