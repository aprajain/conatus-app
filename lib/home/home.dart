import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/custombutton.dart';
import 'package:conatus/models/customcolor.dart';
import 'package:conatus/models/themes.dart';
import 'package:conatus/sevices/auth.dart';
import 'package:flutter/material.dart';

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
          child: element(Center(child: elementText(title)))),
      SizedBox(height: 20),
    ],
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Home extends StatelessWidget {
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return PageView(children: [
      Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(
                Icons.settings,
                size: 20,
              ),
              label: Text(
                'logout',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
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
                      backgroundImage: AssetImage('assets/conatusb.jpeg'),
                      radius: 70.0,
                    ),
                  ),
                  SizedBox(height: 50),
                  menu('Attendance', Attendance(), context),
                  menu('Explore', Explore(), context),
                  menu('Profile', Profile(), context),
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
