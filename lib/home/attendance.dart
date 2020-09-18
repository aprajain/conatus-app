import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'drawer.dart';
import 'package:flutter/material.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  bool present = false;

  Widget day(bool present) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        // (present ? Colors.green
        //     : (absent ? Colors.redAccent : Colors.white)),
      ),
      child: Row(
        children: [
          present
              ? Icon(Icons.check_circle, color: Colors.green)
              : Icon(FontAwesomeIcons.solidTimesCircle, color: Colors.red),
          SizedBox(width: 6),
          Text(
            'September 17, 2020',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: appBar(),
        drawer: Menu(),
        body: bgTheme(
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(3, 5, 3, 15),
                      padding: EdgeInsets.all(25),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[600]),
                      child: Center(
                        child: Text(
                          'MARK ATTENDANCE HERE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )),
                  day(true),
                  day(true),
                  day(true),
                  day(false),
                  day(true),
                  day(false),
                  day(true),
                  day(false),
                  day(true),
                  day(false),
                ],
              ),
            ),
          ),
        ));
  }
}
