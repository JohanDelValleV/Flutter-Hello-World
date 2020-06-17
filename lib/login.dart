import 'package:HelloWorld/HTTPExecute.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 100.0, left: 30.0),
              child: Column(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: 'Hello\n',
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Proxima Nova'),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'There',
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Proxima Nova'),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(30, 215, 96, 1),
                            fontFamily: 'Proxima Nova',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 30.0, left: 30.0, top: 50.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _usernameController,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Proxima Nova'),
                      decoration: const InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Proxima Nova'),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a email';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Proxima Nova'),
                      ),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Proxima Nova'),
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Color.fromRGBO(30, 215, 96, 1),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Proxima Nova',
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                      child: ButtonTheme(
                        height: MediaQuery.of(context).size.height * 0.068,
                        minWidth: MediaQuery.of(context).size.width * 0.75,
                        child: RaisedButton(
                          color: Color.fromRGBO(30, 215, 96, 1),
                          shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            // Validate will return true if the form is valid, or false if
                            // the form is invalid.
                            if (_formKey.currentState.validate()) {
                              HTTPExecute().doLogin(_usernameController.text,
                                  _passwordController.text, context);
                              _usernameController.clear();
                              _passwordController.clear();
                            }
                          },
                          child: Text(
                            'Login'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              fontFamily: 'Proxima Nova',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                      child: ButtonTheme(
                        height: MediaQuery.of(context).size.height * 0.068,
                        minWidth: MediaQuery.of(context).size.width * 0.75,
                        child: RaisedButton.icon(
                          color: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.black)),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {}
                          },
                          label: Text(
                            'Log in with Facebook',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                fontFamily: 'Proxima Nova'),
                          ),
                          icon: Image.network(
                              "https://img.icons8.com/material-outlined/24/000000/facebook-f.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'New to Spotify?',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Proxima Nova'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(30, 215, 96, 1),
                                    fontFamily: 'Proxima Nova',
                                    decoration: TextDecoration.underline),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
