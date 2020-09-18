import 'package:conatus/authenticate/authenticate.dart';
import 'package:conatus/home/home.dart';
import 'package:conatus/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //return home or authenticate
    if (user == null) {
      return Autheticate();
    } else {
      return Home();
    }
  }
}
