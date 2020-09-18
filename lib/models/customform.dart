import 'package:flutter/material.dart';

Widget head(title) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Text(title,
        style: TextStyle(
          color: Colors.blueGrey[700],
          fontSize: 25,
          fontWeight: FontWeight.w700,
        )),
  );
}

Widget textInput(String initialValue) {
  return Theme(
    data: new ThemeData(
      primaryColor: Colors.grey,
      primaryColorDark: Colors.red,
    ),
    child: TextFormField(
      maxLength: 20,
      style: TextStyle(fontSize: 22, color: Colors.black),
      keyboardType: TextInputType.text,
      initialValue: initialValue,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom: -15),
        hintText: 'Enter Your Details',
        hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
      ),
      //onChanged: change,
    ),
  );
}
