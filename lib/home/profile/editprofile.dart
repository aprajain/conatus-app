import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/customform.dart';
import 'package:conatus/models/themes.dart';
import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  final myController = TextEditingController();

  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.text = 'Apra Jain';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          Icon(
            Icons.check,
            size: 35,
          ),
          SizedBox(width: 5),
        ],
      ),
      body: bgTheme(
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 25, 10, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                head('Name'),
                element(textInput('Apra Jain')),
                SizedBox(height: 15),
                head('Branch'),
                element(textInput('IT')),
                SizedBox(height: 15),
                head('Bio'),
                element(
                  TextField(
                    controller: myController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: -15),
                      hintText: 'Enter bio',
                      hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
