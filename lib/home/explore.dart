import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/themes.dart';
import 'package:conatus/models/query.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';
import 'search/members.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(),
      drawer: Menu(),
      body: bgTheme(
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 15, 8, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 10),
                  child: header(
                    'Explore',
                  ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
