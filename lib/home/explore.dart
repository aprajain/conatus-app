import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/bottomBar.dart';
import 'package:conatus/models/themes.dart';
import 'package:conatus/models/query.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';
import 'search/members.dart';

class Explore extends StatelessWidget {
  Widget query() {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white70,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How to add a new database in firebase?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '3 answers',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(),
      bottomNavigationBar: BottomBar(),
      //drawer: Menu(),
      body: bgTheme(
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(
                  'Explore',
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MembersPage()));
                  },
                  child: element(
                    Row(
                      children: [
                        Icon(Icons.search, size: 25, color: Colors.grey[700]),
                        SizedBox(width: 10),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Query()));
                  },
                  child: element(elementText(
                    'ASK A DOUBT HERE',
                  )),
                ),
                SizedBox(height: 20),
                query(),
                query(),
                query(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
