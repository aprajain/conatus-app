import 'package:conatus/home/explore.dart';
import 'package:conatus/home/home.dart';
import 'package:conatus/home/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final tabs = [
    Home(),
    Explore(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white.withOpacity(0.5),
      elevation: 0,
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Column(
              children: [
                Icon(
                  FontAwesomeIcons.home,
                  color: Colors.black,
                  //size: 30,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          title: Container(),
        ),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Explore()));
                },
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.search,
                      color: Colors.black,
                      //size: 30,
                    ),
                    Text(
                      'Explore',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )),
            title: Container()),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Column(
                children: [
                  Icon(
                    FontAwesomeIcons.solidUserCircle,
                    color: Colors.black,
                    //size: 30,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              )),
          title: Container(),
        ),
      ],
    );
  }
}
