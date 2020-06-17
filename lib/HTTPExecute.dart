import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'description.dart';

class HTTPExecute {
  String endPointUrl = 'https://0cf71038b5ca.ngrok.io/api/v1';

  doLogin(String user, String password, BuildContext context) async {
    Map<String, String> body = {
      'username': user,
      'password': password,
    };
    var response = await http.post(this.endPointUrl + '/login', body: body);

    if (response.statusCode == 200) {
      print(response.statusCode);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SecondRoute()));
    }
  }
}
