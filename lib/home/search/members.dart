import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/themes.dart';
import 'package:flutter/material.dart';

import 'demo.dart';

class MembersPage extends StatelessWidget {
  Widget demoProfile(name, context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DemoProfile(name: name),
            ));
      },
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/devs.gif'),
                radius: 35,
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'App Developer',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(),
      body: bgTheme(
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              element(
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
              demoProfile('Anand', context),
              demoProfile('Apra', context),
              demoProfile('Ashutosh', context),
              demoProfile('Avani', context),
              demoProfile('Harsh', context),
              demoProfile('Manish', context),
              demoProfile('Mohit', context),
              demoProfile('Piyush', context),
              demoProfile('Sakshi', context),
              demoProfile('Snigdha', context),
            ],
          ),
        ),
      ),
    );
  }
}
