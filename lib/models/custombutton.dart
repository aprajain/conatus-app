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
