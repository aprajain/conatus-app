import 'package:flutter/material.dart';

var textDeco = InputDecoration(
  //hintText: 'Email',
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey[400], width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2),
  ),
);

class User {
  final String uid;

  User({this.uid});
}
