import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/bottomBar.dart';
import 'package:conatus/models/custombutton.dart';
import 'package:conatus/models/customcolor.dart';
import 'package:conatus/models/themes.dart';
import 'package:conatus/sevices/auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'attendance.dart';
import 'profile/profile.dart';
import 'explore.dart';

const Color BLUE = Color(0XFF9dc6fb);

Widget menu(title, page, context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => page)),
          child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black45,
              ),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ))),
      SizedBox(height: 20),
    ],
  );
}

class Home extends StatelessWidget {
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return PageView(children: [
      Scaffold(
        extendBodyBehindAppBar: true,
        bottomNavigationBar: BottomBar(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
            FlatButton.icon(
              label: Text(
                'logout',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              icon: Icon(
                FontAwesomeIcons.signOutAlt,
                size: 20,
              ),
              onPressed: () async {
                await _auth.signOut();
              },
            )
          ],
        ),
        body: bgTheme(
          SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 5.0,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/conatusBlack.jpeg'),
                      radius: 70.0,
                    ),
                  ),
                  SizedBox(height: 50),
                  menu('Attendance', Attendance(), context),
                  //menu('Explore', Explore(), context),
                  //menu('Profile', Profile(), context),

                  element(Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(width: 6),
                          elementText('Meeting today'),
                        ],
                      ),
                      Text(
                        '5:30 p.m.',
                        style: TextStyle(color: Colors.red, fontSize: 17),
                      )
                    ],
                  )),
                  element(elementText('Check for events'))
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
