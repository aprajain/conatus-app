//import 'dart:html';

import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/customcolor.dart';
import 'package:conatus/models/googlebutton.dart';
import 'package:conatus/models/loading.dart';
import 'package:conatus/models/user.dart';
import 'package:conatus/sevices/auth.dart';
import 'package:flutter/material.dart';
import 'package:conatus/models/themes.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                //margin: EdgeInsets.only(top: 250),
                //padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(-60, -160))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  CustomColor.LTEAL,
                                  CustomColor.DTEAL,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.elliptical(40, 20),
                                bottomRight: Radius.elliptical(40, 20)),
                            color: Colors.grey[200],
                          ),
                          height: 200,
                        ),
                        Positioned(
                          bottom: -50,
                          left: 130,
                          right: 130,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 5.0,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/conatusBlack.jpeg'),
                              radius: 70.0,
                            ),
                          ),
                        ),
                      ],
                      overflow: Overflow.visible,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 80, 30, 20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            TextFormField(
                                decoration:
                                    textDeco.copyWith(hintText: 'Email'),
                                validator: (val) =>
                                    val.isEmpty ? 'Enter an email' : null,
                                onChanged: (val) {
                                  setState(() => email = val);
                                }),
                            SizedBox(height: 20),
                            TextFormField(
                              decoration:
                                  textDeco.copyWith(hintText: 'Password'),
                              obscureText: true,
                              validator: (val) => val.length < 6
                                  ? 'Password must have min 6 chars'
                                  : null,
                              onChanged: (val) {
                                setState(() => password = val);
                              },
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: CustomColor.TEAL,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text('Sign in',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400))),
                              onTap: () async {
                                if (_formKey.currentState.validate()) {
                                  setState(() => loading = true);
                                  dynamic result =
                                      await _auth.signInEmail(email, password);
                                  if (result == null) {
                                    setState(() {
                                      error = 'please supply a valid email';
                                      loading = false;
                                    });
                                  }
                                }
                              },
                            ),
                            SizedBox(height: 10),
                            Text(
                              error,
                              style: TextStyle(color: Colors.red, fontSize: 14),
                            ),
                            SizedBox(height: 40),
                            Text('Don\'t have an account?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                )),
                            SizedBox(height: 5),
                            GestureDetector(
                                onTap: () {
                                  widget.toggleView();
                                },
                                child: Text('Register here.',
                                    style: TextStyle(
                                      color: Colors.blue[700],
                                      fontSize: 18,
                                    )))
                            //signInButton(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
