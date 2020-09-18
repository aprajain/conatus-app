import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Widget appBar(title) {
//   return AppBar(
//     backgroundColor: Colors.white,
//     iconTheme: IconThemeData(color: Colors.black),
//     title: barText(title),
//   );
// }

Widget appBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black),
  );
}

Widget barText(title) {
  return Text(
    title,
    style: TextStyle(
        fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
  );
}
