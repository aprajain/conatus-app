import 'package:conatus/models/customcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bgTheme(Widget body) {
  return Container(
    padding: EdgeInsets.only(top: 90),
    height: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [CustomColor.GREEN, CustomColor.LBLUE, CustomColor.BLUE],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
      // borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.elliptical(40, 20),
      //     bottomRight: Radius.elliptical(40, 20)),
    ),
    child: body,
  );
}

Widget element(Widget body) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.white.withOpacity(0.8),
    ),
    child: body,
  );
}

Widget elementText(value) {
  return Text(value,
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500));
}

Widget header(title) {
  return Text(title,
      style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          shadows: [Shadow(color: Colors.black)]));
}
