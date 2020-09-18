import 'package:conatus/home/attendance.dart';
import 'package:conatus/home/profile/profile.dart';
import 'package:conatus/home/explore.dart';
import 'package:conatus/models/customcolor.dart';

import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 45,
                ),
              ),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                CustomColor.LTEAL,
                CustomColor.DTEAL,
                //CustomColor.BLUE
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text(
              'Attendance',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Attendance()));
            },
          ),
          ListTile(
            title: Text(
              'Explore',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Explore()));
            },
          ),
          ListTile(
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
        ],
      ),
    );
  }
}
