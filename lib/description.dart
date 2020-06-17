import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details page'),
      ),
      body: Center(child: Image.asset('images/test.jpg')),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: Text(
        'Login successful',
        style: TextStyle(
            color: Color.fromRGBO(30, 215, 96, 1),
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Proxima Nova'),
      )),
    );
  }
}
