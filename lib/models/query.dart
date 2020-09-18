import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/customform.dart';
import 'package:conatus/models/custombutton.dart';
import 'package:conatus/models/themes.dart';
import 'package:flutter/material.dart';

class Query extends StatefulWidget {
  @override
  _QueryState createState() => _QueryState();
}

class _QueryState extends State<Query> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(),
      body: bgTheme(
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              head('Question'),
              SizedBox(height: 20),
              element(
                TextField(
                  maxLength: 200,
                  maxLines: 2,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'type here',
                    contentPadding: EdgeInsets.only(bottom: -5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              saveButton('Submit'),
            ],
          ),
        ),
      ),
    );
  }
}
