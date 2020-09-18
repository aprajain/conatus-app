import 'package:flutter/material.dart';

var textDeco = InputDecoration(
  //hintText: 'Email',
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey[600], width: 2),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
);

class User {
  final String uid;

  User({this.uid});
}
