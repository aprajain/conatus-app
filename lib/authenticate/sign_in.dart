import 'package:conatus/models/appbar.dart';
import 'package:conatus/models/googlebutton.dart';
import 'package:conatus/models/loading.dart';
import 'package:conatus/models/user.dart';
import 'package:conatus/sevices/auth.dart';
import 'package:flutter/material.dart';

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
        : SafeArea(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.black),
                title: barText('Sign In'),
                actions: [
                  FlatButton.icon(
                    onPressed: () {
                      widget.toggleView();
                    },
                    icon: Icon(Icons.person),
                    label: Text('Register'),
                  )
                ],
              ),
              body: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          TextFormField(
                              decoration: textDeco.copyWith(hintText: 'Email'),
                              validator: (val) =>
                                  val.isEmpty ? 'Enter an email' : null,
                              onChanged: (val) {
                                setState(() => email = val);
                              }),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: textDeco.copyWith(hintText: 'Password'),
                            obscureText: true,
                            validator: (val) => val.length < 6
                                ? 'Password must have min 6 chars'
                                : null,
                            onChanged: (val) {
                              setState(() => password = val);
                            },
                          ),
                          SizedBox(height: 20),
                          RaisedButton(
                            color: Colors.black45,
                            child: Text(
                              'Sign in',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () async {
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
                          //signInButton(),
                        ],
                      ),
                    )),
              ),
            ),
          );
  }
}
