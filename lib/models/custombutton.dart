import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget saveButton(title) {
  return Center(
    child: Container(
      //alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Text(title,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20)),
    ),
  );
}

Widget customButton(title) {
  return Container(
    //alignment: Alignment.center,
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient:
            LinearGradient(colors: [Colors.green[400], Colors.lightBlue])),
    child: Text(title,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25)),
  );
}
